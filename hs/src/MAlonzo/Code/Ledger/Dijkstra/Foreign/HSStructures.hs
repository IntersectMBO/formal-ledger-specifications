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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.HSStructures where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ_
d__'43''7497'__10 :: Integer -> Integer -> Integer
d__'43''7497'__10
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._._<ᵏʰ_
d__'60''7503''688'__16 :: Integer -> Integer -> ()
d__'60''7503''688'__16 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≈_
d__'8776'__18 :: Integer -> Integer -> ()
d__'8776'__18 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__20 :: Integer -> Integer -> ()
d__'8804''7511'__20 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__22 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__24 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__24 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__32 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_34 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_34 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_36 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_40 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_42 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_42
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_46 :: ()
d_THash_46 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_48 :: ()
d_AccountBalanceIntervals_48 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountOf
d_AccountOf_50 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_50 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt
d_Acnt_52 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_56 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_56
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Addr
d_Addr_58 :: ()
d_Addr_58 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor
d_Anchor_62 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.AnchorOf
d_AnchorOf_66 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_66 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AnyLevelTx
d_AnyLevelTx_68 :: ()
d_AnyLevelTx_68 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_70 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_70 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_72 :: ()
d_AuxiliaryData_72 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceInterval
d_BalanceInterval_74 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_76 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr
d_BaseAddr_78 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_82 :: Integer
d_BlsKeyMaxAge'7580'_82
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.BlsPoP
d_BlsPoP_84 :: ()
d_BlsPoP_84 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BlsSig
d_BlsSig_86 :: ()
d_BlsSig_86 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BlsVKey
d_BlsVKey_88 :: ()
d_BlsVKey_88 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_90 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_96 :: ()
d_CCHotKeys_96 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_98 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1582
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv
d_CertEnv_108 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState
d_CertState_112 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertStateOf
d_CertStateOf_116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1794 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466
d_CertStateOf_116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1802
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ColdCredentialsOf
d_ColdCredentialsOf_120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CollateralInputsOf
d_CollateralInputsOf_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CostModel
d_CostModel_124 :: ()
d_CostModel_124 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Credential
d_Credential_126 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CredentialOf
d_CredentialOf_128 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DCert
d_DCert_132 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DCertsOf
d_DCertsOf_134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DReps
d_DReps_142 :: ()
d_DReps_142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DRepsOf
d_DRepsOf_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState
d_DState_146 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DStateOf
d_DStateOf_150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_DStateOf_150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T
d_T_152 :: ()
d_T_152 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_154 :: ()
d_THash_154 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DataOf
d_DataOf_156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [Integer]
d_DataOf_156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Dataʰ
d_Data'688'_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Datum
d_Datum_160 :: ()
d_Datum_160 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_162 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_164 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_440
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_166 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_166
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_936
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_168 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_168
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_170 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSignedBy
d_Dec'45'isSignedBy_172 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_174 ::
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_176 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_176
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isValidPoP
d_Dec'45'isValidPoP_178 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_180 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_182 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_184 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_186 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1060
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_194 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BlsSig
d_DecEq'45'BlsSig_196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_198 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_200 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_206 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2068
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_208
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-EBHash
d_DecEq'45'EBHash_210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_214 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_216 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_216
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_218 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_218
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_220 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1418
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_226 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_386
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_238
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_240
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_244 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_244
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_246 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_246
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_248 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_248
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_250 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_250
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_252
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_254
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_256 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_256
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_258 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_258
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2066
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_260
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_262
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_264
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_266
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_268 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_268
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_270
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1420
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_272 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_272
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_274
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_276 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_276
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_278 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_278
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_280
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_284 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_284
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv
d_DelegEnv_286 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositOf
d_DepositOf_290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositsOf
d_DepositsOf_292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDeposits
d_DirectDeposits_294 :: ()
d_DirectDeposits_294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDepositsOf
d_DirectDepositsOf_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_298 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188
d_HSAbstractFunctions_302
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3874
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Dijkstra.Foreign.HSStructures._.govStructure
d_govStructure_304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_304
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_306
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Dijkstra.Foreign.HSStructures._.EBHash
d_EBHash_308 :: ()
d_EBHash_308 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Epoch
d_Epoch_312 :: ()
d_Epoch_312 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.EpochOf
d_EpochOf_314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814 ->
  AgdaAny -> Integer
d_EpochOf_314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.EvalNativeScript
d_EvalNativeScript_316 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_318 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_318
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnits
d_ExUnits_320 :: ()
d_ExUnits_320 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FeesOf?
d_FeesOf'63'_324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.FuturePoolsOf
d_FuturePoolsOf_326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1642
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState
d_GState_334 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GStateOf
d_GStateOf_338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_GStateOf_338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1782
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction
d_GovAction_340 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionData
d_GovActionData_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionID
d_GovActionID_346 :: ()
d_GovActionID_346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionOf
d_GovActionOf_348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState
d_GovActionState_350 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionType
d_GovActionType_354 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv
d_GovCertEnv_358 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams
d_GovParams_362 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal
d_GovProposal_366 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRole
d_GovRole_372 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_374 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote
d_GovVote_376 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter
d_GovVoter_380 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes
d_GovVotes_386 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GuardsOf
d_GuardsOf_394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript
d_HSNativeScript_396 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_HSP1ScriptStructure_400
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_HSP2ScriptStructure_402
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_404 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_HSScriptStructure_408
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount
d_HasAccount_410 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor
d_HasAnchor_414 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_418
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_420 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_424 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_424
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals
d_HasBalanceIntervals_426 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'Tx_430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4542
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'TxBody_432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4540
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_434 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
d_HasCCHotKeys'45'CertState_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_1890
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
d_HasCCHotKeys'45'GState_440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1876
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_442 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_446 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_446
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_448 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_448
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_1902
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_450 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_1910
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_452 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1904
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_454 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_1912
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_456 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_1908
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_460 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_1916
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_462 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_464 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_466 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_468 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1906
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_470 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_1914
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState
d_HasCertState_472 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_476 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_476
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2064
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_478 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_478
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4590
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials
d_HasColdCredentials_480 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
d_HasColdCredentials'45'CertEnv_484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_1856
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
d_HasColdCredentials'45'GovCertEnv_486
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1854
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs
d_HasCollateralInputs_488 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020
d_HasCollateralInputs'45'TopLevelTx_492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4518
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential
d_HasCredential_494 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_498 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_498
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury
d_HasCurrentTreasury_500 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'Tx_504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'TxBody_506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts
d_HasDCerts_508 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'Tx_512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4530
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'TxBody_514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4528
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps
d_HasDReps_516 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
d_HasDReps'45'CertState_520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1888
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
d_HasDReps'45'GState_522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1874
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState
d_HasDState_524 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734
d_HasDState'45'CertState_528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1880
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData
d_HasData_530 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-Tx
d_HasData'45'Tx_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'Tx_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4594
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'TxWitnesses_536
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4592
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit
d_HasDeposit_538 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_542
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits
d_HasDeposits_544 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-DState
d_HasDeposits'45'DState_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'DState_548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1864
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-GState
d_HasDeposits'45'GState_550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'GState_550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_1878
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-PState
d_HasDeposits'45'PState_552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'PState_552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1870
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits
d_HasDirectDeposits_554 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'Tx_558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4538
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'TxBody_560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4536
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4588
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4586
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch
d_HasEpoch_566 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
d_HasEpoch'45'CertEnv_570
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_1900
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
d_HasEpoch'45'GovCertEnv_572
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_1898
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?
d_HasFees'63'_574 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'Tx_578
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4580
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'TxBody_580
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4574
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools
d_HasFuturePools_582 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634
d_HasFuturePools'45'PState_586
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_1868
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState
d_HasGState_588 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774
d_HasGState'45'CertState_592
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1884
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction
d_HasGovAction_594 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_598
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_600
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_602 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_606
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_608
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_610
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_612 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_616 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_620
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_622 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_626
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards
d_HasGuards_628 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-Tx
d_HasGuards'45'Tx_632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'Tx_632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4598
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'TxBody_634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag
d_HasIsValidFlag_636 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490
d_HasIsValidFlag'45'Tx_640
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4512
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals
d_HasListOfGovProposals_642 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'Tx_646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4566
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'TxBody_648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4564
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes
d_HasListOfGovVotes_650 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'Tx_654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4562
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'TxBody_656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4560
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_658 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4570
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4568
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue
d_HasMintedValue_666 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'Tx_670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4558
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'TxBody_672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4556
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_674 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_678
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_680 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_680
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_682 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams
d_HasPParams_684 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'CertEnv_688
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1850
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'GovCertEnv_690
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1852
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState
d_HasPState_692 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754
d_HasPState'45'CertState_696
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1882
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy
d_HasPolicy_698 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_702
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools
d_HasPools_704 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
d_HasPools'45'CertState_708
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1892
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
d_HasPools'45'PState_710
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1866
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers
d_HasRedeemers_712 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'Tx_716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4516
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'TxWitnesses_718
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4514
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs
d_HasReferenceInputs_720 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'Tx_724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4554
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'TxBody_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4552
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_728 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'Tx_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'TxBody_734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_736 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring
d_HasRetiring_738 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654
d_HasRetiring'45'PState_742
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1872
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_744 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_748 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_748
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_750 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_750
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards
d_HasRewards_752 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
d_HasRewards'45'CertState_756
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1886
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
d_HasRewards'45'DState_758
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1862
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts
d_HasScripts_760 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-Tx
d_HasScripts'45'Tx_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'Tx_764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'TxWitnesses_766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4600
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize
d_HasSize_768 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize-Tx
d_HasSize'45'Tx_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110
d_HasSize'45'Tx_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4508
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs
d_HasSpendInputs_774 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'Tx_778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4550
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'TxBody_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4548
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake
d_HasStake_782 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_786 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
d_HasStakeDelegs'45'CertState_790
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_1896
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
d_HasStakeDelegs'45'DState_792
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1860
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions
d_HasSubTransactions_794 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068
d_HasSubTransactions'45'TopLevelTx_798
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4522
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards
d_HasTopLevelGuards_800 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'Tx_804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4526
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'TxBody_806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4524
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_808 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_808
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody
d_HasTxBody_810 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956
d_HasTxBody'45'Tx_814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4506
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees
d_HasTxFees_816 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044
d_HasTxFees'45'TopLevelTx_820
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4520
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId
d_HasTxId_822 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'Tx_826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4584
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'TxBody_828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4582
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts
d_HasTxOuts_830 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'Tx_834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'TxBody_836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses
d_HasTxWitnesses_838 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978
d_HasTxWitnesses'45'Tx_842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4510
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO
d_HasUTxO_844 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval
d_HasValidInterval_848 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'Tx_852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4546
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'TxBody_854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4544
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote
d_HasVote_856 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_862 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
d_HasVoteDelegs'45'CertState_866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_1894
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
d_HasVoteDelegs'45'DState_868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1858
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes
d_HasVotes_870 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_874 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4534
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4532
-- Ledger.Dijkstra.Foreign.HSStructures._.HashProtected
d_HashProtected_882 :: () -> ()
d_HashProtected_882 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_884 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_884
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_886 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_886
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_888 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_888
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_890 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_890
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_892 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_892
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2746
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HsGovParams
d_HsGovParams_894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_HsGovParams_894
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Dijkstra.Foreign.HSStructures._.InBalanceInterval
d_InBalanceInterval_896 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_900 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_902 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_902
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert
d_IsConwayCert_904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 -> ()
d_IsConwayCert_904 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert?
d_IsConwayCert'63'_906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_906
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1526
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_910 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_912 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_912
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_914 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_918 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_922 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsPoolRegistered
d_IsPoolRegistered_926 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_926 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidFlagOf
d_IsValidFlagOf_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ix
d_Ix_930 :: ()
d_Ix_930 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_932 :: ()
d_THash_932 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.KeyPair
d_KeyPair_936 :: ()
d_KeyPair_936 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LangDepView
d_LangDepView_938 :: ()
d_LangDepView_938 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Language
d_Language_940 :: ()
d_Language_940 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_942 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_950 :: Integer
d_MaxLovelaceSupply'7580'_950
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_952 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_952 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_954 :: ()
d_MemoryEstimate_954 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.MintedValueOf
d_MintedValueOf_956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> Integer
d_MintedValueOf_956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NativeScript
d_NativeScript_960 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.NeedsHash
d_NeedsHash_962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_962 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Network
d_Network_964 :: ()
d_Network_964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkId
d_NetworkId_968 :: Integer
d_NetworkId_968
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_970 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_970 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  ()
d_NoOverlappingSpendInputs_976 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_978 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_978
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_980 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_980
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_982 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_982
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.P1Script
d_P1Script_984 :: ()
d_P1Script_984 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_986 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusScript
d_PlutusScript_990 :: ()
d_PlutusScript_990 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamGroup
d_PParamGroup_998 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams
d_PParams_1000 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_1004 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsOf
d_PParamsOf_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UpdateT
d_UpdateT_1010 :: ()
d_UpdateT_1010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PState
d_PState_1012 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PStateOf
d_PStateOf_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_PStateOf_1016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1762
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusLanguage
d_PlutusLanguage_1018 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_1020 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV1
d_PlutusV1_1024 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1024
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV2
d_PlutusV2_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1026
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV3
d_PlutusV3_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1028
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV4
d_PlutusV4_1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1030
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Policy
d_Policy_1032 :: ()
d_Policy_1032 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PolicyOf
d_PolicyOf_1034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv
d_PoolEnv_1036 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_1040 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Pools
d_Pools_1044 :: ()
d_Pools_1044 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolsOf
d_PoolsOf_1046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1048 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1048
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Prices
d_Prices_1050 :: ()
d_Prices_1050 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1052 :: ()
d_ProposedPPUpdates_1052 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Quorum
d_Quorum_1054 :: Integer
d_Quorum_1054
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RBHeaderHash
d_RBHeaderHash_1056 :: ()
d_RBHeaderHash_1056 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1058 :: Integer
d_RandomnessStabilisationWindow_1058
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1060 :: Integer
d_RandomnessStabilisationWindow'7580'_1060
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Redeemer
d_Redeemer_1062 :: ()
d_Redeemer_1062 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemerPtr
d_RedeemerPtr_1064 :: ()
d_RedeemerPtr_1064 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemersOf
d_RedeemersOf_1066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Retiring
d_Retiring_1086 :: ()
d_Retiring_1086 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RetiringOf
d_RetiringOf_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1662
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress
d_RewardAddress_1090 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_1094 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Rewards
d_Rewards_1096 :: ()
d_Rewards_1096 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardsOf
d_RewardsOf_1098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1682
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SKey
d_SKey_1102 :: ()
d_SKey_1102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Script
d_Script_1106 :: ()
d_Script_1106 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_1108 :: ()
d_ScriptAddr_1108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1110 :: ()
d_ScriptBaseAddr_1110 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1112 :: ()
d_ScriptBootstrapAddr_1112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptHash
d_ScriptHash_1114 :: ()
d_ScriptHash_1114 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_1118 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptsOf
d_ScriptsOf_1122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ser
d_Ser_1126 :: ()
d_Ser_1126 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_1128 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1128
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_1130 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1132 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1132 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1134 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1134
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_1136 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1136
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_1138 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1138
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_1140 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1140
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Language
d_Show'45'Language_1142 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1144 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Network
d_Show'45'Network_1146 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_1148 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1150 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1150
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_1152 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1154 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1154
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1156 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1158 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1160 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1162 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_1164 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Sig
d_Sig_1166 :: ()
d_Sig_1166 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SizeOf
d_SizeOf_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Slot
d_Slot_1170 :: ()
d_Slot_1170 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1172 :: Integer
d_SlotsPerEpoch'7580'_1172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Slotʳ
d_Slot'691'_1174 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SpendInputsOf
d_SpendInputsOf_1176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_1178 :: Integer
d_StabilityWindow_1178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1180 :: Integer
d_StabilityWindow'7580'_1180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Stake
d_Stake_1182 :: ()
d_Stake_1182 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_1184 :: ()
d_StakeDelegs_1184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_1186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1722
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeOf
d_StakeOf_1188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1702
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_1190 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.SubLevelTx
d_SubLevelTx_1194 :: ()
d_SubLevelTx_1194 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SubTransactionsOf
d_SubTransactionsOf_1196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1198 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1200 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1202 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_1208 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelTx
d_TopLevelTx_1214 :: ()
d_TopLevelTx_1214 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx
d_Tx_1220 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody
d_TxBody_1224 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_1228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxFeesOf
d_TxFeesOf_1230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxId
d_TxId_1232 :: ()
d_TxId_1232 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIdOf
d_TxIdOf_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> Integer
d_TxIdOf_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIn
d_TxIn_1236 :: ()
d_TxIn_1236 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOut
d_TxOut_1238 :: ()
d_TxOut_1238 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOutsOf
d_TxOutsOf_1240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxRefHash
d_TxRefHash_1242 :: ()
d_TxRefHash_1242 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_1244 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnessesOf
d_TxWitnessesOf_1248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_1248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxO
d_UTxO_1250 :: ()
d_UTxO_1250 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxOOf
d_UTxOOf_1252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Update
d_Update_1254 :: ()
d_Update_1254 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VDeleg
d_VDeleg_1266 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.VKey
d_VKey_1268 :: ()
d_VKey_1268 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_1270 :: ()
d_VKeyAddr_1270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1272 :: ()
d_VKeyBaseAddr_1272 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1274 :: ()
d_VKeyBootstrapAddr_1274 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VRF
d_VRF_1278 :: ()
d_VRF_1278 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ValidIntervalOf
d_ValidIntervalOf_1280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Value
d_Value_1282 :: ()
d_Value_1282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1284 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1284
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_1286 :: ()
d_VoteDelegs_1286 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_1288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteOf
d_VoteOf_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_1290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VotesOf
d_VotesOf_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1834 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_VotesOf_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Withdrawals
d_Withdrawals_1294 :: ()
d_Withdrawals_1294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_1296 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_1298 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1298
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_1300 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1300 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_1302 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1302
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.HSStructures._.addEpoch
d_addEpoch_1304 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1304
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addSlot
d_addSlot_1306 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1306
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addValue
d_addValue_1308 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1308
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.allDCerts
d_allDCerts_1310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_allDCerts_1310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4748
-- Ledger.Dijkstra.Foreign.HSStructures._.allMintedCoin
d_allMintedCoin_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_allMintedCoin_1312
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4732
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceInputs
d_allReferenceInputs_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceScripts
d_allReferenceScripts_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1316
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4678
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputs
d_allSpendInputs_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputsList
d_allSpendInputsList_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1320
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4638
-- Ledger.Dijkstra.Foreign.HSStructures._.allWitnessScripts
d_allWitnessScripts_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4690
-- Ledger.Dijkstra.Foreign.HSStructures._.applyUpdate
d_applyUpdate_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1324
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin
d_coin_1330 :: Integer -> Integer
d_coin_1330
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1332 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1332 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1334 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1334
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1336 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1336 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_1338 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1338
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.cwitness
d_cwitness_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1340
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.dataOfTx
d_dataOfTx_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_dataOfTx_1342 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4714
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_1350 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1350
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epoch
d_epoch_1352 :: Integer -> Integer
d_epoch_1352
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epochStructure
d_epochStructure_1354 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1354
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.HSStructures._.firstSlot
d_firstSlot_1372 :: Integer -> Integer
d_firstSlot_1372
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1374 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.gaData
d_gaData_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.gaType
d_gaType_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.getAllScripts
d_getAllScripts_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1380
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4704
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1382 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1382
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxData
d_getTxData_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_getTxData_1384 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4724
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxScripts
d_getTxScripts_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1386
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4698
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.globalConstants
d_globalConstants_1388 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1388
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.HSStructures._.govParams
d_govParams_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_1390
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_690
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.HSStructures._.hashEBRefs
d_hashEBRefs_1394 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1394
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1396 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1396
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.inject
d_inject_1398 :: Integer -> Integer
d_inject_1398
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1400 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1400
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1402
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1404 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1406 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1408 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1408
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1410 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1410 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1412 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script
d_isP1Script_1414 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1414 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1416 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1416
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script
d_isP2Script_1418 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1418 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1420 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1420
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
-- Ledger.Dijkstra.Foreign.HSStructures._.isScript
d_isScript_1422 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1424 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1426 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1426
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1428 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1428 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned
d_isSigned_1430 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1430 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1432 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1432 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSignedBy
d_isSignedBy_1434 :: Integer -> Integer -> Integer -> ()
d_isSignedBy_1434 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSignedByAggregate
d_isSignedByAggregate_1436 :: [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1436 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKey
d_isVKey_1438 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1440 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isValidPoP
d_isValidPoP_1442 :: Integer -> Integer -> ()
d_isValidPoP_1442 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.khs
d_khs_1444 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1444
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.language
d_language_1446 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1446
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1450
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4740
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0))
           v2 v3 v4)
-- Ledger.Dijkstra.Foreign.HSStructures._.monoid
d_monoid_1456 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1456
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.netId
d_netId_1458 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1458
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.HSStructures._.newCertDeposits
d_newCertDeposits_1460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  Integer
d_newCertDeposits_1460
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2016
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.p1s
d_p1s_1462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_1462
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1464 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1466 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.payCred
d_payCred_1468 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1468
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.HSStructures._.pkk
d_pkk_1470 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1470
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.policies
d_policies_1472 :: Integer -> [Integer]
d_policies_1472
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.positivePParams
d_positivePParams_1474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Foreign.HSStructures._.ppUpd
d_ppUpd_1476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1476
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1478
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_ppdWellFormed_1480 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1482 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1482
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.proposedCC
d_proposedCC_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.HSStructures._.ps
d_ps_1486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_1486
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1488 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1488
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceData
d_referenceData_1490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1490
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4720
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceScripts
d_referenceScripts_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1492
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4672
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.referencedTxOuts
d_referencedTxOuts_1494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1494
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4660
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.refundCertDeposits
d_refundCertDeposits_1496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  Integer
d_refundCertDeposits_1496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2046
-- Ledger.Dijkstra.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  Integer
d_rewardsBalance_1504
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2004
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_scriptStructure_1506
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfTx
d_scriptsOfTx_1508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1508 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4668
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1510 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1510
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.sign
d_sign_1512 :: Integer -> Integer -> Integer
d_sign_1512
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.size
d_size_1514 :: Integer -> Integer
d_size_1514
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendData
d_spendData_1516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1516
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4718
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendScripts
d_spendScripts_1518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1518
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4670
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendTxOuts
d_spendTxOuts_1520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1520
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4654
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.stakeCred
d_stakeCred_1522 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1522
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1524 :: Integer -> Integer
d_suc'7497'_1524
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1526 :: [Integer] -> Integer
d_sum'7515'_1526
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.toP1Script
d_toP1Script_1528 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.HSStructures._.toP2Script
d_toP2Script_1530 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1530
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1534 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1534
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4716
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToDatum
d_txOutToDatum_1536 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1536
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToScript
d_txOutToScript_1538 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1538
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToValue
d_txOutToValue_1540 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1540
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.txidBytes
d_txidBytes_1542 :: Integer -> Integer
d_txidBytes_1542 v0 = coe v0
-- Ledger.Dijkstra.Foreign.HSStructures._.updateGroups
d_updateGroups_1544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1544
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.validP1Script
d_validP1Script_1554 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1554 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1556 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1556 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.valuesOfUTxO
d_valuesOfUTxO_1558 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1558
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessData
d_witnessData_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_witnessData_1560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4722
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessScripts
d_witnessScripts_1562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4688
-- Ledger.Dijkstra.Foreign.HSStructures._.ε
d_ε_1564 :: Integer
d_ε_1564
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1566 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1566 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1568 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1568
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1570 :: Integer -> Integer
d_ℕtoEpoch_1570
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1572 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1572
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1574 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1574
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.reserves
d_reserves_1626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.treasury
d_treasury_1628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.hash
d_hash_1632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  Integer
d_hash_1632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.url
d_url_1634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.net
d_net_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.pay
d_pay_1650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.stake
d_stake_1652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.net
d_net_1658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.coldCredentials
d_coldCredentials_1664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  Integer
d_epoch_1666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.pp
d_pp_1668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_1668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1404 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.dState
d_dState_1672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_dState_1672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.gState
d_gState_1674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_gState_1674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.pState
d_pState_1676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_pState_1676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto._<ᵏʰ_
d__'60''7503''688'__1686 :: Integer -> Integer -> ()
d__'60''7503''688'__1686 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_1688 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_1688
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.BlsPoP
d_BlsPoP_1690 :: ()
d_BlsPoP_1690 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.BlsSig
d_BlsSig_1692 :: ()
d_BlsSig_1692 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.BlsVKey
d_BlsVKey_1694 :: ()
d_BlsVKey_1694 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_1696 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_1696
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1698 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1698
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSignedBy
d_Dec'45'isSignedBy_1700 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_1700
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_1702 ::
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_1702
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isValidPoP
d_Dec'45'isValidPoP_1704 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_1704
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-BlsPoP
d_DecEq'45'BlsPoP_1706 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_1706
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-BlsSig
d_DecEq'45'BlsSig_1708 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_1708
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-BlsVKey
d_DecEq'45'BlsVKey_1710 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_1710
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-EBHash
d_DecEq'45'EBHash_1712 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_1712
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_1714 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_1714
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1716
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1718 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1718
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1720 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1720
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1722 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1722
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-TxRefHash
d_DecEq'45'TxRefHash_1724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_1724
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-VRF
d_DecEq'45'VRF_1726 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1726
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.EBHash
d_EBHash_1728 :: ()
d_EBHash_1728 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.THash
d_THash_1730 :: ()
d_THash_1730 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1732 :: ()
d_KeyPair_1732 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.RBHeaderHash
d_RBHeaderHash_1734 :: ()
d_RBHeaderHash_1734 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.SKey
d_SKey_1736 :: ()
d_SKey_1736 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1738 :: ()
d_ScriptHash_1738 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Ser
d_Ser_1740 :: ()
d_Ser_1740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1742 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1742
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1744 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1744
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Sig
d_Sig_1746 :: ()
d_Sig_1746 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1748 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1748
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.TxRefHash
d_TxRefHash_1750 :: ()
d_TxRefHash_1750 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VKey
d_VKey_1752 :: ()
d_VKey_1752 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VRF
d_VRF_1754 :: ()
d_VRF_1754 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.hashEBRefs
d_hashEBRefs_1756 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1756
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1758 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1758 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1760 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1760 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1762 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1762 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSignedBy
d_isSignedBy_1764 :: Integer -> Integer -> Integer -> ()
d_isSignedBy_1764 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSignedByAggregate
d_isSignedByAggregate_1766 :: [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1766 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isValidPoP
d_isValidPoP_1768 :: Integer -> Integer -> ()
d_isValidPoP_1768 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.khs
d_khs_1770 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1770
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.pkk
d_pkk_1772 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1772
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.sign
d_sign_1774 :: Integer -> Integer -> Integer
d_sign_1774
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___284
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.deposits
d_deposits_1794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.rewards
d_rewards_1796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pools
d_pools_1806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_1808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.deposits
d_deposits_1852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.dreps
d_dreps_1854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaData
d_gaData_1858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_1858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaType
d_gaType_1860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_1860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.action
d_action_1864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_1864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.deposit
d_deposit_1866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_deposit_1866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_expiresIn_1868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1076
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_prevAction_1870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1074
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.votes
d_votes_1874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_votes_1874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.coldCredentials
d_coldCredentials_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1522
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.epoch
d_epoch_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  Integer
d_epoch_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1518
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.pp
d_pp_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_1898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1520 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_1904 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_1912 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.action
d_action_1918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_1918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.anchor
d_anchor_1920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_1920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.deposit
d_deposit_1922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Integer
d_deposit_1922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1050
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.policy
d_policy_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Maybe Integer
d_policy_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1048
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.prevAction
d_prevAction_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  AgdaAny
d_prevAction_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.returnAddr
d_returnAddr_1928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.anchor
d_anchor_1940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_1940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.gid
d_gid_1942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.vote
d_vote_1944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_vote_1944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.voter
d_voter_1946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_voter_1946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvCredential
d_gvCredential_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  AgdaAny
d_gvCredential_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvRole
d_gvRole_1952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902
d_gvRole_1952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvCC
d_gvCC_1956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvDRep
d_gvDRep_1958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvSPO
d_gvSPO_1960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1008
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_1964
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1966
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_1968
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_1970 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1970 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Anchor
d_Anchor_1972 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.AnchorOf
d_AnchorOf_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DReps
d_DReps_1984 :: ()
d_DReps_1984 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DRepsOf
d_DRepsOf_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_1988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1988
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1990 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1990
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1992 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1992
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1994 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1994
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1996
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1998 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1998
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2000 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2000
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DepositOf
d_DepositOf_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovAction
d_GovAction_2004 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionData
d_GovActionData_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_2008 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionID
d_GovActionID_2010 :: ()
d_GovActionID_2010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionOf
d_GovActionOf_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionState
d_GovActionState_2014 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionType
d_GovActionType_2018 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovProposal
d_GovProposal_2022 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRole
d_GovRole_2026 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_2028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVote
d_GovVote_2030 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoter
d_GovVoter_2034 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotes
d_GovVotes_2040 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2046 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_2050
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2052 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2054 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2056 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2058 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2058
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps
d_HasDReps_2060 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2064 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_2068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2070 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_2074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_2076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2078 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_2082
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_2084
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_2086
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2088 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_2092
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2094 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_2098
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2100 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_2104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2106 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2108 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote
d_HasVote_2110 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_2114
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2116 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HashProtected
d_HashProtected_2120 :: () -> ()
d_HashProtected_2120 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_2124 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Policy
d_Policy_2130 :: ()
d_Policy_2130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2136 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2138 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2138
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VDeleg
d_VDeleg_2146 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Vote
d_Vote_2148 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2150 :: ()
d_VoteDelegs_2150 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteOf
d_VoteOf_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_2154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2158 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2160 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2160 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaData
d_gaData_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaType
d_gaType_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2166
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2168
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.proposedCC
d_proposedCC_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2172
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_2196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_2204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_2208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_2212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_2220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nativeScript
d_nativeScript_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370
d_nativeScript_2244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_2246 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_2246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_2248 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_2248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_2254 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_2254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_2256 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_2256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount.AccountOf
d_AccountOf_2260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2264 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1582
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_2280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1794 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466
d_CertStateOf_2280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1802
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_2284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_2292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_2300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_2300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_DStateOf_2304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData.DataOf
d_DataOf_2308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [Integer]
d_DataOf_2308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_2312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch.EpochOf
d_EpochOf_2320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814 ->
  AgdaAny -> Integer
d_EpochOf_2320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_2328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_2328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1642
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_2332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_GStateOf_2332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1782
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards.GuardsOf
d_GuardsOf_2340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_2348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_2352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2356 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> Integer
d_MintedValueOf_2360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_2368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_2372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_PStateOf_2372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1762
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_2376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_2392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1662
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2396 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2396 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_2400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1682
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize.SizeOf
d_SizeOf_2408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_2408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1702
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1722
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_2432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_2440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> Integer
d_TxIdOf_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_2448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_2452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes.VotesOf
d_VotesOf_2460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1834 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_VotesOf_2460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2464 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2486 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2490 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2492 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2494 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2498 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2500 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2504 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2504 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2506 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2506 ~v0 v1 = du_isMagmaMonomorphism_2506 v1
du_isMagmaMonomorphism_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2506 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2510 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2514 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2514 ~v0 v1 = du_isRelIsomorphism_2514 v1
du_isRelIsomorphism_2514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2516 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2516 ~v0 v1 = du_isRelMonomorphism_2516 v1
du_isRelMonomorphism_2516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2516 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.surjective
d_surjective_2518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2518 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2520 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_2522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2522 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_2526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2526 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_2528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2528 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2530 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2530 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2532 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2532 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2536 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2538 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2538 ~v0 v1 = du_isRelMonomorphism_2538 v1
du_isRelMonomorphism_2538 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2538 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2540 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_2542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2542 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  ()
d_P1Script_2572 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2574 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.Emax
d_Emax_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a
d_a_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a0
d_a0_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.b
d_b_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdls
d_costmdls_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2606
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minPoolCost
d_minPoolCost_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.nopt
d_nopt_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.prices
d_prices_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.pv
d_pv_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_2666 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_2672 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2678 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2678 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d__'8746''737''7580''7504'__2680
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_730
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                             (coe v3))))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2682 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2682
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2684 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2688
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_736
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2690
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_2692
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_2694
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_2696
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_2698
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_2700
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_2702 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2704 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2706 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_Emax_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepActivity_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.deposits
d_deposits_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.fPools
d_fPools_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.pools
d_pools_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1440
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.retiring
d_retiring_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2804 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_CostModel_2806 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T
d_T_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_T_2808 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_THash_2810 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Datum_2814 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2828 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2830 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_ExUnits_2834 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_LangDepView_2838 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Language_2840 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_PlutusScript_2842 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV1_2844
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV2_2846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV3_2848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV4
d_PlutusV4_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV4_2850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Prices_2852 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Redeemer_2854 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2864 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2866 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.language
d_language_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny
d_language_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2874 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.epoch
d_epoch_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1498 ->
  Integer
d_epoch_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.pp
d_pp_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1506 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.net
d_net_2898 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.stake
d_stake_2900 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2904 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_CostModel_2906 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T
d_T_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_T_2908 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_THash_2910 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_2914 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2930
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2934 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2936 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_ExUnits_2940 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2946
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_LangDepView_2948 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Language_2950 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2952 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_P1Script_2956 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_PlutusScript_2958 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV1_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV2_2962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV3_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV4
d_PlutusV4_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV4_2966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Prices_2968 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_2970 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Script_2972 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2980
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2984 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2986 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2988 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2994 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2996 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2998 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3000 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3002 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.language
d_language_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny
d_language_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ps
d_ps_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3018 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3020 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.cost
d_cost_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_cost_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1330
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.margin
d_margin_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.owners
d_owners_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  [Integer]
d_owners_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1328
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_pledge_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1336
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.vrf
d_vrf_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_vrf_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1338
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3044 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3046 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3048 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3054 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3058 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3062 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3066 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_3070 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3074 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3078 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3082 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3086 v0
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
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.size
d_size_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3092 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3096 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3098 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3100 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3114 ~v0 = du_isMagmaIsomorphism_3114
du_isMagmaIsomorphism_3114 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3114 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3116 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3116 v2
du_isMagmaMonomorphism_3116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3116 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3118 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3122 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3124 ~v0 ~v1 v2 = du_isRelIsomorphism_3124 v2
du_isRelIsomorphism_3124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3124 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3126 ~v0 ~v1 v2 = du_isRelMonomorphism_3126 v2
du_isRelMonomorphism_3126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3126 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_3128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3128 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3132 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3136 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3138 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3142 ~v0 = du_isMagmaMonomorphism_3142
du_isMagmaMonomorphism_3142 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3142 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3148 ~v0 ~v1 v2 = du_isRelMonomorphism_3148 v2
du_isRelMonomorphism_3148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3150 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3152 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.isValid
d_isValid_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  AgdaAny
d_isValid_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3824
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txAuxData
d_txAuxData_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Maybe Integer
d_txAuxData_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txBody
d_txBody_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_txBody_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3818
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txSize
d_txSize_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_txSize_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txWitnesses
d_txWitnesses_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_txWitnesses_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_collateralInputs_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_currentTreasury_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.mint
d_mint_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_mint_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.referenceInputs
d_referenceInputs_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [Integer]
d_requiredSignerHashes_3176 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3920
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_scriptIntegrityHash_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_txADhash_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_txCerts_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_txDonation_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txFee
d_txFee_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txFee_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_txGovProposals_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_txGovVotes_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGuards
d_txGuards_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txId
d_txId_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_txId_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txIns
d_txIns_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3876
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_txNetworkId_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txSubTransactions
d_txSubTransactions_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txSubTransactions_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3218
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3940
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txData
d_txData_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [Integer]
d_txData_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_3238 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_3238
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_3240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_3240
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_3244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_3244
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-TxLevel
d_DecEq'45'TxLevel_3246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxLevel_3246
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxLevel_36
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLanguage
d_HSLanguage_3250 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_3252 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_3252 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InLevel
d_InLevel_3254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_InLevel_3254 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_InLevel_18
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InSubLevel
d_InSubLevel_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InSubLevel_3256 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InTopLevel
d_InTopLevel_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InTopLevel_3258 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_3274 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_3274
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.Tag
d_Tag_3278 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_3280 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TxLevel
d_TxLevel_3286 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__3320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__3322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__3322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3324 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._<ᵏʰ_
d__'60''7503''688'__3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__3326 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__3328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3328 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3330 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__3332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__3332 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_3334 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_3336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_3338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_3342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3344 ~v0 = du_'61''61''45'Set_3344
du_'61''61''45'Set_3344 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3344 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountBalanceIntervals
d_AccountBalanceIntervals_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AccountBalanceIntervals_3348 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountOf
d_AccountOf_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_3350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_3352 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_3356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Addr_3358 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_3362 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnchorOf
d_AnchorOf_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_3366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AnyLevelTx_3368 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_3370 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_3370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AuxiliaryData_3372 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceInterval
d_BalanceInterval_3374 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceIntervalsOf
d_BalanceIntervalsOf_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_3378 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_BlsKeyMaxAge'7580'_3382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BlsPoP
d_BlsPoP_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_BlsPoP_3384 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BlsSig
d_BlsSig_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_BlsSig_3386 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BlsVKey
d_BlsVKey_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_BlsVKey_3388 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_3390 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CollateralInputsOf
d_CollateralInputsOf_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_3400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_3402 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_3404 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_3406 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CurrentTreasuryOf
d_CurrentTreasuryOf_3408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_3408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_3414 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_3416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T
d_T_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_3418 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3420 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DataOf
d_DataOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [AgdaAny]
d_DataOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_3426 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_3428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_3430 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_440
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3432 ~v0
  = du_Dec'45'InBalanceInterval_3432
du_Dec'45'InBalanceInterval_3432 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_936
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_3434 ~v0 = du_Dec'45'isScript_3434
du_Dec'45'isScript_3434 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_3434
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_3436 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isSignedBy
d_Dec'45'isSignedBy_3438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_3438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_3440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_3442 ~v0 = du_Dec'45'isVKey_3442
du_Dec'45'isVKey_3442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_3442
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_3444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3456 ~v0
  = du_DecEq'45'BalanceInterval_3456
du_DecEq'45'BalanceInterval_3456 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1060
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_3458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_3460 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_3462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_3464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_3466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_3470 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_3472 ~v0
  = du_DecEq'45'DrepThresholds_3472
du_DecEq'45'DrepThresholds_3472 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_3472
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-EBHash
d_DecEq'45'EBHash_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_3474 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_3476 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3480 ~v0 = du_DecEq'45'GovActionType_3480
du_DecEq'45'GovActionType_3480 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3482 ~v0 = du_DecEq'45'GovRole_3482
du_DecEq'45'GovRole_3482 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_3486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NativeScript
d_DecEq'45'NativeScript_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_3494 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_386
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_3498 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_3502 ~v0 = du_DecEq'45'PParamGroup_3502
du_DecEq'45'PParamGroup_3502 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_3502
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_3504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_3506 ~v0
  = du_DecEq'45'PoolThresholds_3506
du_DecEq'45'PoolThresholds_3506 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_3506
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_3508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_3510 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_3512 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_3514 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_3516 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_3518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3522 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3524 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3526 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3528 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_3532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_3538 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3542 ~v0 = du_DecEq'45'Vote_3542
du_DecEq'45'Vote_3542 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3542
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_3544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DepositOf
d_DepositOf_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDeposits
d_DirectDeposits_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DirectDeposits_3548 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDepositsOf
d_DirectDepositsOf_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_3552 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.EBHash
d_EBHash_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_EBHash_3556 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_3560 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.EvalNativeScript
d_EvalNativeScript_3562 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_3566 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.FeesOf?
d_FeesOf'63'_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_3570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_3572 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_3576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_3576 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_3578 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_3580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_3582 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_3586 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_3588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_3590 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_3594 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_3598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_3598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_3600 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_3602 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_3604 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_3608 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_3612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_3614 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_3618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GuardsOf
d_GuardsOf_3622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_3622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount
d_HasAccount_3624 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor
d_HasAnchor_3628 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_3632 ~v0
  = du_HasAnchor'45'GovProposal_3632
du_HasAnchor'45'GovProposal_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
du_HasAnchor'45'GovProposal_3632
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_3634 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_3638 ~v0
  = du_HasAttrSize'45'BootstrapAddr_3638
du_HasAttrSize'45'BootstrapAddr_3638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_3638
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_3640 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_3644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'Tx_3644 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4542
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_3646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'TxBody_3646 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4540
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_3648 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_3652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_3652 ~v0 = du_HasCast'45'Acnt_3652
du_HasCast'45'Acnt_3652 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_3652
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3654 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3654
du_HasCast'45'GovAction'45'Sigma_3654 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3654
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_3656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3656 ~v0 = du_HasCast'45'GovVote_3656
du_HasCast'45'GovVote_3656 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3656
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3658 ~v0
  = du_HasCast'45'HashProtected_3658
du_HasCast'45'HashProtected_3658 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3660 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3660
du_HasCast'45'HashProtected'45'MaybeScriptHash_3660 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3660
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3662
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4590
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_3664 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_3668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020
d_HasCollateralInputs'45'TopLevelTx_3668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4518
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_3670 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_3674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_3674 ~v0
  = du_HasCredential'45'RewardAddress_3674
du_HasCredential'45'RewardAddress_3674 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_3674
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_3676 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'Tx_3680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'TxBody_3682 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_3684 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'Tx_3688 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4530
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_3690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'TxBody_3690 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4528
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_3692 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData
d_HasData_3696 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-Tx
d_HasData'45'Tx_3700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'Tx_3700 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4594
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_3702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'TxWitnesses_3702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4592
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit
d_HasDeposit_3704 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_3708 ~v0
  = du_HasDeposit'45'GovProposal_3708
du_HasDeposit'45'GovProposal_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
du_HasDeposit'45'GovProposal_3708
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_3710 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'Tx_3714 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4538
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'TxBody_3716 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4536
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_3718 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4588
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_3720 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4586
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?
d_HasFees'63'_3722 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'Tx_3726 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4580
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'TxBody_3728 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4574
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_3730 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_3734 ~v0
  = du_HasGovAction'45'GovActionState_3734
du_HasGovAction'45'GovActionState_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovActionState_3734
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_3736 ~v0
  = du_HasGovAction'45'GovProposal_3736
du_HasGovAction'45'GovProposal_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovProposal_3736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_3738 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_3742 ~v0
  = du_HasGovActionType'45'GovAction_3742
du_HasGovActionType'45'GovAction_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_3742
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_3744 ~v0
  = du_HasGovActionType'45'GovActionState_3744
du_HasGovActionType'45'GovActionState_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_3744
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_3746 ~v0
  = du_HasGovActionType'45'GovProposal_3746
du_HasGovActionType'45'GovProposal_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_3746
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_3748 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_3752 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_3756 ~v0 = du_HasGovVoter'45'GovVote_3756
du_HasGovVoter'45'GovVote_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_3756
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_3758 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_3762 ~v0
  = du_HasGovVotes'45'GovActionState_3762
du_HasGovVotes'45'GovActionState_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_3762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards
d_HasGuards_3764 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'Tx_3768 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4598
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'TxBody_3770 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_3772 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490
d_HasIsValidFlag'45'Tx_3776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4512
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_3778 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'Tx_3782 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4566
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'TxBody_3784 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4564
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_3786 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'Tx_3790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4562
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'TxBody_3792 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4560
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_3794 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_3798 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4570
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_3800 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4568
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue
d_HasMintedValue_3802 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'Tx_3806 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4558
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'TxBody_3808 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4556
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_3810 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_3814 ~v0
  = du_HasNetworkId'45'BaseAddr_3814
du_HasNetworkId'45'BaseAddr_3814 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_3814
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_3816 ~v0
  = du_HasNetworkId'45'BootstrapAddr_3816
du_HasNetworkId'45'BootstrapAddr_3816 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_3816
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_3818 ~v0
  = du_HasNetworkId'45'RewardAddress_3818
du_HasNetworkId'45'RewardAddress_3818 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_3818
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_3820 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_3824 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_3828 ~v0
  = du_HasPolicy'45'GovProposal_3828
du_HasPolicy'45'GovProposal_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
du_HasPolicy'45'GovProposal_3828
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers
d_HasRedeemers_3830 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'Tx_3834 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4516
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_3836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'TxWitnesses_3836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4514
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_3838 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'Tx_3842 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4554
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'TxBody_3844 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4552
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_3846 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'Tx_3850 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'TxBody_3852 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_3854 ~v0 = du_HasReserves'45'Acnt_3854
du_HasReserves'45'Acnt_3854 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_3854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_3856 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3860 ~v0
  = du_HasRewardAddress'45'GovActionState_3860
du_HasRewardAddress'45'GovActionState_3860 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3862 ~v0
  = du_HasRewardAddress'45'GovProposal_3862
du_HasRewardAddress'45'GovProposal_3862 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts
d_HasScripts_3864 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'Tx_3868 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'TxWitnesses_3870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4600
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize
d_HasSize_3872 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110
d_HasSize'45'Tx_3876 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4508
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs
d_HasSpendInputs_3878 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'Tx_3882 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4550
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'TxBody_3884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4548
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions
d_HasSubTransactions_3886 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068
d_HasSubTransactions'45'TopLevelTx_3890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4522
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_3892 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'Tx_3896 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4526
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_3898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'TxBody_3898 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4524
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_3900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_3900 ~v0 = du_HasTreasury'45'Acnt_3900
du_HasTreasury'45'Acnt_3900 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_3900
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_3902 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956
d_HasTxBody'45'Tx_3906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4506
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees
d_HasTxFees_3908 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_3912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044
d_HasTxFees'45'TopLevelTx_3912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4520
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_3914 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'Tx_3918 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4584
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'TxBody_3920 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4582
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts
d_HasTxOuts_3922 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'Tx_3926 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_3928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'TxBody_3928 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3930 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978
d_HasTxWitnesses'45'Tx_3934 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4510
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_3936 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval
d_HasValidInterval_3940 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_3944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'Tx_3944 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4546
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'TxBody_3946 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4544
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_3948 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_3952 ~v0 = du_HasVote'45'GovVote_3952
du_HasVote'45'GovVote_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
du_HasVote'45'GovVote_3952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3954 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3958 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3962 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4534
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3964 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4532
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_3966 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.InBalanceInterval
d_InBalanceInterval_3976 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3980 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3982 ~v0 = du_IsBootstrapAddr'63'_3982
du_IsBootstrapAddr'63'_3982 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3982
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_3986 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_3988 ~v0 = du_IsKeyHashObj'63'_3988
du_IsKeyHashObj'63'_3988 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_3988
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3990 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3994 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3998 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsValidFlagOf
d_IsValidFlagOf_4002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_4002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_4004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ix_4004 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_4006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_4006 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_4010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_KeyPair_4010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_4012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_4012 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Language
d_Language_4014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_4014 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_4016 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_4020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovVotesOf
d_ListOfGovVotesOf_4022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_4022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_4024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_4024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_4026 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_4026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_4028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_4028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MintedValueOf
d_MintedValueOf_4030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_4030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NativeScript
d_NativeScript_4032 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_4034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_4034 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Network
d_Network_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Network_4036 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_4040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_4042 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_4042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  ()
d_NoOverlappingSpendInputs_4048 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_4050 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_4052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_4052 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_4054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_4054 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_4056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_4056 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_4058 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_4062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_4062 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_4064 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_4066 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_4070 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_4074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_4074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_4076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UpdateT_4076 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusLanguage
d_PlutusLanguage_4078 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_4080 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_4084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV1_4084 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_4086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV2_4086 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_4088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV3_4088 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV4
d_PlutusV4_4090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_4090 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_4092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4092 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_4094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_4096 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_4100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_4100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_4102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ProposedPPUpdates_4104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_Quorum_4106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RBHeaderHash
d_RBHeaderHash_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RBHeaderHash_4108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_4110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_RandomnessStabilisationWindow'7580'_4112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_4114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_4114 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemerPtr
d_RedeemerPtr_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_4116 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemersOf
d_RedeemersOf_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ReferenceInputsOf
d_ReferenceInputsOf_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_4138 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_4142 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_4142 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_4146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SKey_4146 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Script
d_Script_4150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_4150 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_4152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptAddr_4152 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_4154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptBaseAddr_4154 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_4156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptBootstrapAddr_4156 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_4158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_4158 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_4162 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptsOf
d_ScriptsOf_4166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_4170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ser_4170 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_4172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_4174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_4174 ~v0 = du_Show'45'Credential_4174
du_Show'45'Credential_4174 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_4174 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_4176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_4176 ~v0
  = du_Show'45'Credential'215'Coin_4176
du_Show'45'Credential'215'Coin_4176 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_4176 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_4178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_4178 ~v0 = du_Show'45'DrepThresholds_4178
du_Show'45'DrepThresholds_4178 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_4178
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_4180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_4180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_4182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_4184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4184 ~v0 = du_Show'45'GovRole_4184
du_Show'45'GovRole_4184 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4184
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_4190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_4192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_4192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_4194 ~v0 = du_Show'45'PoolThresholds_4194
du_Show'45'PoolThresholds_4194 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_4194
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_4198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_4198 ~v0 = du_Show'45'RewardAddress_4198
du_Show'45'RewardAddress_4198 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_4198
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_4200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4204 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4206 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_4210 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SizeOf
d_SizeOf_4212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_4212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_4214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_4214 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_4216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_4218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_4218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SpendInputsOf
d_SpendInputsOf_4220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_4222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_StabilityWindow_4222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_StabilityWindow'7580'_4224 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubLevelTx
d_SubLevelTx_4226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_4226 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubTransactionsOf
d_SubTransactionsOf_4228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_4228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4232 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4234 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_4236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_4240 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelGuardsOf
d_TopLevelGuardsOf_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelTx
d_TopLevelTx_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_4246 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_4252 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_4256 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_4260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxFeesOf
d_TxFeesOf_4262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_4262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxId_4264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> AgdaAny
d_TxIdOf_4266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_4268 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_4270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_4270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOutsOf
d_TxOutsOf_4272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxRefHash
d_TxRefHash_4274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxRefHash_4274 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_4276 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnessesOf
d_TxWitnessesOf_4280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_4280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_4282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_4282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_4284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_4284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Update
d_Update_4286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Update_4286 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_4298 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_4300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_4300 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyAddr_4302 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_4304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyBaseAddr_4304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_4306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyBootstrapAddr_4306 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_4310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VRF_4310 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ValidIntervalOf
d_ValidIntervalOf_4312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value
d_Value_4314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_4314 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_4318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4318 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_4320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_4322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_4322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_4324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_4324 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_4326 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_4326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4328 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_4330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4330 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_4332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_4334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_4336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allDCerts
d_allDCerts_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_allDCerts_4340 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4748
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allMintedCoin
d_allMintedCoin_4342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_allMintedCoin_4342
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4732
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4344 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4642
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4346
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputs
d_allSpendInputs_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4348 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4630
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4350 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4638
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4352 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4690
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_4354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin
d_coin_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_4358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_4360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4360 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_4364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4364 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_4366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.dataOfTx
d_dataOfTx_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [AgdaAny]
d_dataOfTx_4368 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4714
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_4370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_4370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_4372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_4372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_4374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_4374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_4392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_4392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.fromPlutusLanguage
d_fromPlutusLanguage_4394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_4394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_4396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_4396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_4398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_4398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getAllScripts
d_getAllScripts_4400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4704
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_4402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_4402 ~v0 = du_getScriptHash_4402
du_getScriptHash_4402 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_4402
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxData
d_getTxData_4404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [AgdaAny]
d_getTxData_4404 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4724
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxScripts
d_getTxScripts_4406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4698
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_4408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_4408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_4410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_4410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_4412
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4414 ~v0 = du_govVoterCredential_4414
du_govVoterCredential_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4414
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.hashEBRefs
d_hashEBRefs_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_4416 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_4418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.inject
d_inject_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_4420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_4422 ~v0 = du_isBootstrapAddr_4422
du_isBootstrapAddr_4422 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_4422
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4424 ~v0 = du_isGovVoterDRep_4424
du_isGovVoterDRep_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4424
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_4426 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_4428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_4428 ~v0 = du_isKeyHashObj_4428
du_isKeyHashObj_4428 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_4428
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_4430 ~v0 = du_isKeyHashObj'7495'_4430
du_isKeyHashObj'7495'_4430 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_4430
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_4432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_4432 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_4434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4434 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_4436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4436 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4438 ~v0 = du_isP1Script'63'_4438
du_isP1Script'63'_4438 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4442 ~v0 = du_isP2Script'63'_4442
du_isP2Script'63'_4442 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_4444 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_4446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_4446 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_4448 ~v0 = du_isScriptObj_4448
du_isScriptObj_4448 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_4448
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_4450 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_4452 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_4454 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSignedBy
d_isSignedBy_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_4456 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSignedByAggregate
d_isSignedByAggregate_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_4458 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_4460 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_4462 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isValidPoP
d_isValidPoP_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d_isValidPoP_4464 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.khs
d_khs_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_4466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.language
d_language_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_4468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4472 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4740
      v0 v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_4478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4478 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.netId
d_netId_4480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_4480 ~v0 = du_netId_4480
du_netId_4480 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_4480
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_4482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_4482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_4484 ~v0 = du_paramsWF'45'elim_4484
du_paramsWF'45'elim_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_4484 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_4486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_4486 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_4488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_4488 ~v0 = du_payCred_4488
du_payCred_4488 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_4488
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_4490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_4490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.policies
d_policies_4492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny]
d_policies_4492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_4494 ~v0 = du_positivePParams_4494
du_positivePParams_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_4494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_4496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_4496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_4498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> ()
d_ppdWellFormed_4500 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_4502 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4504 ~v0 = du_proposedCC_4504
du_proposedCC_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4504
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ps
d_ps_4506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_4506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_4508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4508 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceData
d_referenceData_4510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4510 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4720
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceScripts
d_referenceScripts_4512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4512 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4672
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4660
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_4516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_scriptStructure_4516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4518 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4668
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4520 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4666
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sign
d_sign_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_4522 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.size
d_size_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_size_4524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendData
d_spendData_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4526 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4718
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendScripts
d_spendScripts_4528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4528 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4670
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendTxOuts
d_spendTxOuts_4530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4530 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4654
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_4532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_4532 ~v0 = du_stakeCred_4532
du_stakeCred_4532 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_4532
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_suc'7497'_4534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_4536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_4538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4538 ~v0 = du_toP1Script_4538
du_toP1Script_4538 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4538
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_4540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4540 ~v0 = du_toP2Script_4540
du_toP2Script_4540 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4540
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_4542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4544 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4716
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToDatum
d_txOutToDatum_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4546 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4620
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToScript
d_txOutToScript_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4548 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4616
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToValue
d_txOutToValue_4550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4550 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4624
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_4552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_txidBytes_4552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_4554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4564 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_4566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4566 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4568 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4628
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessData
d_witnessData_4570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [AgdaAny]
d_witnessData_4570 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4722
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessScripts
d_witnessScripts_4572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4572 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4688
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ε
d_ε_4574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_ε_4574 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_4576 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_4578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_4578 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_ℕtoEpoch_4580 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_4582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_4582 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_4600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_4600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_4602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_4602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_4606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  AgdaAny
d_hash_4606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_4608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_4608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_4622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_4622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_4624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4624 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_4626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4626 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_4630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_4630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_4632 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_4632 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_4634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_4644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_4644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_4646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_4646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_4648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_4648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_4650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_4650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_4652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_4652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_4654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_4654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_4656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_4658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_4658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_4660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_4660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_4662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_4662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_4682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_4682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_4684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_4684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_4688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_4688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.deposit
d_deposit_4690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_deposit_4690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_4692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_expiresIn_4692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1076
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_prevAction_4694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_4696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1074
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_votes_4698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1072
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_4718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_4718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_4720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_4720 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_4722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_4722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_4724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_4726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_4728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_4728 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_4730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_4730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.action
d_action_4734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_4734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.anchor
d_anchor_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_4736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.deposit
d_deposit_4738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Integer
d_deposit_4738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1050
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.policy
d_policy_4740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Maybe AgdaAny
d_policy_4740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1048
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.prevAction
d_prevAction_4742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  AgdaAny
d_prevAction_4742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.returnAddr
d_returnAddr_4744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.anchor
d_anchor_4756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_4756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.gid
d_gid_4758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_4758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.vote
d_vote_4760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_vote_4760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.voter
d_voter_4762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_voter_4762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvCredential
d_gvCredential_4766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  AgdaAny
d_gvCredential_4766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvRole
d_gvRole_4768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902
d_gvRole_4768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvCC
d_gvCC_4772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_4772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvDRep
d_gvDRep_4774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_4774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvSPO
d_gvSPO_4776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_4776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1008
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_4780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_4780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_4782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_4782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_4784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_4784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_4786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_4786 ~v0 = du_'61''61''45'Set_4786
du_'61''61''45'Set_4786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_4786 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Anchor
d_Anchor_4788 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_4792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_4792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DReps
d_DReps_4800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_4800 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_4802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_4802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_4804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_4804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_4806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_4806 ~v0 = du_DecEq'45'GovActionType_4806
du_DecEq'45'GovActionType_4806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_4806
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_4808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_4808 ~v0 = du_DecEq'45'GovRole_4808
du_DecEq'45'GovRole_4808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_4808
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_4810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_4810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_4812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_4812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_4814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_4814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_4816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_4816 ~v0 = du_DecEq'45'Vote_4816
du_DecEq'45'Vote_4816 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_4816
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_4818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_4818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovAction
d_GovAction_4820 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_4824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_4824 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_4826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_4826 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_4828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_4828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_4830 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_4834 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_4836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_4836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_4838 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRole
d_GovRole_4842 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_4844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_4844 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVote
d_GovVote_4846 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_4850 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_4854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_4854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_4856 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_4860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_4860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_4862 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_4866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_4866 ~v0
  = du_HasAnchor'45'GovProposal_4866
du_HasAnchor'45'GovProposal_4866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
du_HasAnchor'45'GovProposal_4866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_4868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_4868 ~v0
  = du_HasCast'45'GovAction'45'Sigma_4868
du_HasCast'45'GovAction'45'Sigma_4868 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_4868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_4870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_4870 ~v0 = du_HasCast'45'GovVote_4870
du_HasCast'45'GovVote_4870 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_4870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_4872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_4872 ~v0
  = du_HasCast'45'HashProtected_4872
du_HasCast'45'HashProtected_4872 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_4872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_4874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_4874 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_4874
du_HasCast'45'HashProtected'45'MaybeScriptHash_4874 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_4874
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_4876 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_4880 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_4884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_4884 ~v0
  = du_HasDeposit'45'GovProposal_4884
du_HasDeposit'45'GovProposal_4884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
du_HasDeposit'45'GovProposal_4884
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_4886 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_4890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_4890 ~v0
  = du_HasGovAction'45'GovActionState_4890
du_HasGovAction'45'GovActionState_4890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovActionState_4890
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_4892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_4892 ~v0
  = du_HasGovAction'45'GovProposal_4892
du_HasGovAction'45'GovProposal_4892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovProposal_4892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_4894 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_4898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_4898 ~v0
  = du_HasGovActionType'45'GovAction_4898
du_HasGovActionType'45'GovAction_4898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_4898
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_4900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_4900 ~v0
  = du_HasGovActionType'45'GovActionState_4900
du_HasGovActionType'45'GovActionState_4900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_4900
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_4902 ~v0
  = du_HasGovActionType'45'GovProposal_4902
du_HasGovActionType'45'GovProposal_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_4902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_4904 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_4908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_4908 ~v0 = du_HasGovVoter'45'GovVote_4908
du_HasGovVoter'45'GovVote_4908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_4908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_4910 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_4914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_4914 ~v0
  = du_HasGovVotes'45'GovActionState_4914
du_HasGovVotes'45'GovActionState_4914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_4914
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_4916 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_4920 ~v0
  = du_HasPolicy'45'GovProposal_4920
du_HasPolicy'45'GovProposal_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
du_HasPolicy'45'GovProposal_4920
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_4922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_4922 ~v0
  = du_HasRewardAddress'45'GovActionState_4922
du_HasRewardAddress'45'GovActionState_4922 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_4922
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_4924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_4924 ~v0
  = du_HasRewardAddress'45'GovProposal_4924
du_HasRewardAddress'45'GovProposal_4924 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_4924
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote
d_HasVote_4926 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_4930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_4930 ~v0 = du_HasVote'45'GovVote_4930
du_HasVote'45'GovVote_4930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
du_HasVote'45'GovVote_4930
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_4932 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_4936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_4936 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_4940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_4940 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Policy
d_Policy_4946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4946 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_4948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_4952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4952 ~v0 = du_Show'45'GovRole_4952
du_Show'45'GovRole_4952 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_4954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_4962 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Vote
d_Vote_4964 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_4966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4966 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_4968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_4970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_4970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_4974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4974 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_4976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4976 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaData
d_gaData_4978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_4978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaType
d_gaType_4980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_4980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_4982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4982 ~v0 = du_govVoterCredential_4982
du_govVoterCredential_4982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4982
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_4984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4984 ~v0 = du_isGovVoterDRep_4984
du_isGovVoterDRep_4984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4984
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_4988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4988 ~v0 = du_proposedCC_4988
du_proposedCC_4988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4988
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_5004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_5004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_5008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_5008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_5012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_5012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_5016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_5016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_5020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_5020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_5024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_5024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_5028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_5028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_5032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_5032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_5036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_5036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_5040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_5040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount.AccountOf
d_AccountOf_5060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_5060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_5064 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_5064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_5068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_5068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_5072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_5072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_5076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_5076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_5080 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_5080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_5084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_5084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_5088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_5088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData.DataOf
d_DataOf_5092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [AgdaAny]
d_DataOf_5092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_5096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_5096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_5100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_5100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_5104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_5104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_5108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_5108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_5112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_5112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_5116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_5116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_5120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_5120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_5124 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_5124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_5128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_5128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_5132 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_5132 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_5136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_5136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_5140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_5140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_5144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_5144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_5148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_5148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_5152 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_5152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_5156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_5156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize.SizeOf
d_SizeOf_5160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_5160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_5164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_5164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_5168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_5168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_5172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_5172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_5176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_5176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_5180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_5180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_5184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> AgdaAny
d_TxIdOf_5184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_5188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_5188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_5192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_5192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_5196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_5196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_5200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_5200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_5204 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_5204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_5226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5226 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5228 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5232 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_5234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5234 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_5238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5238 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_5240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5244 ~v0 = du_isMagmaIsomorphism_5244
du_isMagmaIsomorphism_5244 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5244 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5246 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5246 v2
du_isMagmaMonomorphism_5246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5250 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_5254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5254 ~v0 ~v1 v2 = du_isRelIsomorphism_5254 v2
du_isRelIsomorphism_5254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5256 ~v0 ~v1 v2 = du_isRelMonomorphism_5256 v2
du_isRelMonomorphism_5256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5256 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.surjective
d_surjective_5258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5260 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_5262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5262 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_5266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_5268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5272 ~v0 = du_isMagmaMonomorphism_5272
du_isMagmaMonomorphism_5272 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5272 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5278 ~v0 ~v1 v2 = du_isRelMonomorphism_5278 v2
du_isRelMonomorphism_5278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5280 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_5282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_5312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  ()
d_P1Script_5312 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_5314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5314 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_5330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_5330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_5332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_5332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_5334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_5336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_5336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_5338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_5338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_5340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_5340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_5342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_5342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_5344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_5344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_5346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_5346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_5348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_5348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_5350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_5350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_5352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_5352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_5354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_5354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_5356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_5356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_5358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_5358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_5360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_5360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_5362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_5362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_5364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_5364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_5366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_5366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_5368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_5368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_5370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_5372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_5374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_5374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_5376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_5376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_5378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_5378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minPoolCost
d_minPoolCost_5382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_5382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_5384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_5384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_5386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_5388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_5388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_5390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_5390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_5392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_5392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_5394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_5394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_5396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_5398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_5400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_5402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_5406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_5406 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_5408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_5408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_5410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_5410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_5412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_5412 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_5414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_5414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__5418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__5418 ~v0 = du__'63''8599'__5418
du__'63''8599'__5418 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__5418 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__5420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d__'8746''737''7580''7504'__5420 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_730
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_5422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_5422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_5424 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_5428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_5428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_5430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_5430 ~v0 = du_modifiedUpdateGroups_5430
du_modifiedUpdateGroups_5430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_5430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_5432 ~v0 = du_modifiesEconomicGroup_5432
du_modifiesEconomicGroup_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesEconomicGroup_5432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_5434 ~v0
  = du_modifiesGovernanceGroup_5434
du_modifiesGovernanceGroup_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesGovernanceGroup_5434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_5436 ~v0 = du_modifiesNetworkGroup_5436
du_modifiesNetworkGroup_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesNetworkGroup_5436
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_5438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_5438 ~v0 = du_modifiesSecurityGroup_5438
du_modifiesSecurityGroup_5438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesSecurityGroup_5438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_5440 ~v0 = du_modifiesTechnicalGroup_5440
du_modifiesTechnicalGroup_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesTechnicalGroup_5440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_5442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_5442 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_5444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_5444 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_5446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_5446 ~v0 = du_'8801''45'update_5446
du_'8801''45'update_5446 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_5446 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_5450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_Emax_5450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_5452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_5452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_5454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_5456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_5456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_5458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_5458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_5460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_5460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_5462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_5462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_5464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_5464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_5466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_5466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_5468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_drepActivity_5468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_5470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_5470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_5472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_5472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_5474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_5474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_5476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_5476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_5478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_5478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_5480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxBlockExUnits_5480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_5482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_5482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_5484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_5484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_5486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_5486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_5488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_5490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_5492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxTxExUnits_5492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_5494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_5494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_5496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_5496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_5500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_5500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_5502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_5502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_5504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_5506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_5506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_5508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_5508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_5510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_5510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_5512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_prices_5512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_5514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_5516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_5518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_5520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__5534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5534 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_5536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_CostModel_5536 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_5538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_T_5538 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_5540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_THash_5540 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_5542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_5544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Datum_5544 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_5548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_5550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_5556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_5558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5558 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_5560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5560 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_5564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_ExUnits_5564 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_5568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_LangDepView_5568 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_5570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Language_5570 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_5572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_PlutusScript_5572 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_5574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV1_5574 ~v0 = du_PlutusV1_5574
du_PlutusV1_5574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV1_5574
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_5576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV2_5576 ~v0 = du_PlutusV2_5576
du_PlutusV2_5576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV2_5576
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_5578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV3_5578 ~v0 = du_PlutusV3_5578
du_PlutusV3_5578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV3_5578
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV4
d_PlutusV4_5580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV4_5580 ~v0 = du_PlutusV4_5580
du_PlutusV4_5580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV4_5580
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_5582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Prices_5582 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_5584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Redeemer_5584 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_5586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_5588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_5590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_5592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_5594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5594 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_5596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5596 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_5598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_5600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_5602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny
d_language_5602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_5604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5604 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_5610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_5610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_5612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_5612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_5614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_5614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_5616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_5616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_5618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_5618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_5622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_5622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_5624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_5624 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__5628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5628 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_5630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_CostModel_5630 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_5632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_T_5632 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_5634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_THash_5634 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_5636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_5638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_5638 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_5644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_5646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_5652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_5654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_5654 ~v0
  = du_DecEq'45'LanguageCostModels_5654
du_DecEq'45'LanguageCostModels_5654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_5654
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_5658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5658 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_5660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5660 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_5664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_ExUnits_5664 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_5670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_5670 ~v0 = du_Hashable'45'Script_5670
du_Hashable'45'Script_5670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_5670
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_5672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_LangDepView_5672 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_5674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Language_5674 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_5676 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_5680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_P1Script_5680 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_5682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_PlutusScript_5682 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_5684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV1_5684 ~v0 v1 = du_PlutusV1_5684 v1
du_PlutusV1_5684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV1_5684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV2_5686 ~v0 v1 = du_PlutusV2_5686 v1
du_PlutusV2_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV2_5686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_5688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV3_5688 ~v0 v1 = du_PlutusV3_5688 v1
du_PlutusV3_5688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV3_5688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV4
d_PlutusV4_5690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV4_5690 ~v0 v1 = du_PlutusV4_5690 v1
du_PlutusV4_5690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV4_5690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_5692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Prices_5692 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_5694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_5694 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_5696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Script_5696 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_5698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_5700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_5702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_5704 ~v0
  = du_Show'45'LanguageCostModels_5704
du_Show'45'LanguageCostModels_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_5704
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_5706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_5708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5708 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_5710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5710 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_5712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_5714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_5716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_5716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_5718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_5718 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_5720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_5720 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_5722 ~v0 = du_isP1Script'63'_5722
du_isP1Script'63'_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_5722 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_5724 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_5726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_5726 ~v0 = du_isP2Script'63'_5726
du_isP2Script'63'_5726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_5726 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_5728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny
d_language_5728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_5730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_5734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_5734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_5736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_5736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_5738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_5738 ~v0 = du_toP1Script_5738
du_toP1Script_5738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_5738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_5740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_5740 ~v0 = du_toP2Script_5740
du_toP2Script_5740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_5740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_5742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5742 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_5744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5744 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__5754 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__5754 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__5756 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__5756 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__5758 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__5758 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_5760 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_5760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_5762 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_5762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_5764 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_5768 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_5772 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_5776 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_5776 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_5778 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_5778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_5780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_5780 ~v0 = du_addValue_5780
du_addValue_5780 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_5780
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_5782 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_5782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_5784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_5784 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_5786 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_5786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_5788 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_5788 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_5790 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_5790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_5792 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_5792 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_5794 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_5794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_5796 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_5796 v0
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
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.size
d_size_5798 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_5798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_5800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_5800 ~v0 = du_sum'7515'_5800
du_sum'7515'_5800 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_5800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_5802 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_5802 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_5806 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5806 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5808 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5808 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5810 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5810 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5812 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5812 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_5814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5814 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_5818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5818 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_5820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5820 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5824 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5824 ~v0 = du_isMagmaIsomorphism_5824
du_isMagmaIsomorphism_5824 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5824 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5826 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5826 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5826 v2
du_isMagmaMonomorphism_5826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5826 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5832 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_5834 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5834 ~v0 ~v1 v2 = du_isRelIsomorphism_5834 v2
du_isRelIsomorphism_5834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5836 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5836 ~v0 ~v1 v2 = du_isRelMonomorphism_5836 v2
du_isRelMonomorphism_5836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5836 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_5838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5838 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5840 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_5842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5842 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_5846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5846 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_5848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5852 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5852 ~v0 = du_isMagmaMonomorphism_5852
du_isMagmaMonomorphism_5852 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5852 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5856 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5858 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5858 ~v0 ~v1 v2 = du_isRelMonomorphism_5858 v2
du_isRelMonomorphism_5858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5858 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5860 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_5862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5862 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_5866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  AgdaAny
d_isValid_5866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3824
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txAuxData
d_txAuxData_5868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Maybe AgdaAny
d_txAuxData_5868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txBody
d_txBody_5870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_txBody_5870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3818
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txSize
d_txSize_5872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_txSize_5872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txWitnesses
d_txWitnesses_5874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_txWitnesses_5874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_5878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_collateralInputs_5878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_5880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_currentTreasury_5880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_5882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_mint_5882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_5884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_5884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3878
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_5886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [AgdaAny]
d_requiredSignerHashes_5886 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3920
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_5888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe AgdaAny
d_scriptIntegrityHash_5888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_5890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe AgdaAny
d_txADhash_5890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_5892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_5892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_5894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_txCerts_5894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_5896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_5896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_5898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_txDonation_5898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_5900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txFee_5900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_5902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_txGovProposals_5902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_5904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_txGovVotes_5904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGuards
d_txGuards_5906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_5906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_5908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txId_5908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_5910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_5910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3876
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_5912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe AgdaAny
d_txNetworkId_5912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_5914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_5914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_5916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_5916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_5918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txSubTransactions_5918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_5920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_5920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_5922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_5922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_5926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_5926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_5928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [AgdaAny]
d_scriptsP1_5928 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3940
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txData
d_txData_5930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [AgdaAny]
d_txData_5930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_5932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_5932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_5934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_5934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3932
      (coe v0)
