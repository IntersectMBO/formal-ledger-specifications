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
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ_
d__'43''7497'__10 :: Integer -> Integer -> Integer
d__'43''7497'__10
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._._≈_
d__'8776'__16 :: Integer -> Integer -> ()
d__'8776'__16 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≤ᵉᵘ_
d__'8804''7497''7512'__18 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8804''7497''7512'__18 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__20 :: Integer -> Integer -> ()
d__'8804''7511'__20 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1538 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_32 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_32 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.0ᵉᵘ
d_0'7497''7512'_34 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_0'7497''7512'_34
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  Bool
d_'61''61''45'GovAction_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1524
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1506
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_40 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Bool
d_'61''61''45'GovProposal_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1558
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_42 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1494
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_44 :: ()
d_THash_44 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_46 :: ()
d_AccountBalanceIntervals_46 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountOf
d_AccountOf_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_216 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_AccountOf_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt
d_Acnt_50 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_54 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_54
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Addr
d_Addr_56 :: ()
d_Addr_56 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor
d_Anchor_60 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.AnchorOf
d_AnchorOf_64 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_64 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AnyLevelTx
d_AnyLevelTx_66 :: ()
d_AnyLevelTx_66 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_68 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_70 :: ()
d_AuxiliaryData_70 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceInterval
d_BalanceInterval_72 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_74 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr
d_BaseAddr_76 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_80 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_86 :: ()
d_CCHotKeys_86 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_756 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_90 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv
d_CertEnv_98 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState
d_CertState_102 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertStateOf
d_CertStateOf_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1938 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_CertStateOf_106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ColdCredentialsOf
d_ColdCredentialsOf_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1738 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CollateralInputsOf
d_CollateralInputsOf_112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CostModel
d_CostModel_114 :: ()
d_CostModel_114 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Credential
d_Credential_116 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CredentialOf
d_CredentialOf_118 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DCert
d_DCert_122 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DCertsOf
d_DCertsOf_124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DReps
d_DReps_132 :: ()
d_DReps_132 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DRepsOf
d_DRepsOf_134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState
d_DState_136 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DStateOf
d_DStateOf_140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554
d_DStateOf_140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T
d_T_142 :: ()
d_T_142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_144 :: ()
d_THash_144 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DataOf
d_DataOf_146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366 ->
  AgdaAny -> [Integer]
d_DataOf_146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Dataʰ
d_Data'688'_148 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Datum
d_Datum_150 :: ()
d_Datum_150 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_152 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_394
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_154 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_946 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_154
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_980
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_156 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_156
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_300
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_158 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_160 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_160
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_162 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_164 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_166 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_168 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_170 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_172 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_172
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1104
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_174 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_336
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_338
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_180 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_182 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_184 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_184
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_772
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_186 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_192
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_194 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1386
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_362
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_198 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_200 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_202 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_340
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1556
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_214
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_778
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_216
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_776
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_218
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_774
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolState
d_DecEq'45'StakePoolState_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolState_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolState_2226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_238
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_240
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_244
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_246
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_248
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_250
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_252
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_256 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_256
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv
d_DelegEnv_258 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositOf
d_DepositOf_262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositsOf
d_DepositsOf_264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDeposits
d_DirectDeposits_266 :: ()
d_DirectDeposits_266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDepositsOf
d_DirectDepositsOf_268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_270 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280
d_HSAbstractFunctions_274
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3968
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.govStructure
d_govStructure_276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_276
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.Epoch
d_Epoch_282 :: ()
d_Epoch_282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.EpochOf
d_EpochOf_284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1958 ->
  AgdaAny -> Integer
d_EpochOf_284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.EvalNativeScript
d_EvalNativeScript_286 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_288 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_288
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnits
d_ExUnits_290 :: ()
d_ExUnits_290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FPools
d_FPools_294 :: ()
d_FPools_294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FeesOf?
d_FeesOf'63'_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.FuturePoolsOf
d_FuturePoolsOf_298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState
d_GState_306 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GStateOf
d_GStateOf_310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594
d_GStateOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction
d_GovAction_312 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionData
d_GovActionData_316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_GovActionData_316 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionID
d_GovActionID_318 :: ()
d_GovActionID_318 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionOf
d_GovActionOf_320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState
d_GovActionState_322 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionType
d_GovActionType_326 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv
d_GovCertEnv_330 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams
d_GovParams_334 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal
d_GovProposal_338 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRole
d_GovRole_344 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946 ->
  ()
d_GovRoleCredential_346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote
d_GovVote_348 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter
d_GovVoter_352 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes
d_GovVotes_358 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GuardsOf
d_GuardsOf_366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLeiosCryptoStructure
d_HSLeiosCryptoStructure_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_HSLeiosCryptoStructure_368
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript
d_HSNativeScript_370 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_HSP1ScriptStructure_374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_364
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_HSP2ScriptStructure_376
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_398
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_378 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
d_HSScriptStructure_382
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_440
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount
d_HasAccount_384 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAdd-ExUnits
d_HasAdd'45'ExUnits_388 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_388
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor
d_HasAnchor_390 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
d_HasAnchor'45'GovProposal_394
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_396 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_400 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_400
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals
d_HasBalanceIntervals_402 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546
d_HasBalanceIntervals'45'Tx_406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4638
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546
d_HasBalanceIntervals'45'TxBody_408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4636
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_410 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1718
d_HasCCHotKeys'45'CertState_414
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_2034
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1718
d_HasCCHotKeys'45'GState_416
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_2020
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_418 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_236
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_424
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_2048
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_2056
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_2050
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_2058
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_2054
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_436 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_436
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_2062
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1484
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_440 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_442 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_444 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_444
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_2052
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_446 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_446
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_2060
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-StakePoolState
d_HasCast'45'StakePoolState_448 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakePoolState_448
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'StakePoolState_2046
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState
d_HasCertState_450 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_454 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_454
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_456 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_456
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4690
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials
d_HasColdCredentials_458 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1738
d_HasColdCredentials'45'CertEnv_462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_2000
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1738
d_HasColdCredentials'45'GovCertEnv_464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1998
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs
d_HasCollateralInputs_466 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096
d_HasCollateralInputs'45'TopLevelTx_470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential
d_HasCredential_472 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_476 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_476
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury
d_HasCurrentTreasury_478 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
d_HasCurrentTreasury'45'Tx_482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4714
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
d_HasCurrentTreasury'45'TxBody_484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4712
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts
d_HasDCerts_486 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
d_HasDCerts'45'Tx_490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
d_HasDCerts'45'TxBody_492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps
d_HasDReps_494 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'CertState_498
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_2032
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'GState_500
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_2018
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState
d_HasDState_502 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1878
d_HasDState'45'CertState_506
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_2024
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData
d_HasData_508 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-Tx
d_HasData'45'Tx_512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366
d_HasData'45'Tx_512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4694
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366
d_HasData'45'TxWitnesses_514
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4692
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit
d_HasDeposit_516 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
d_HasDeposit'45'GovProposal_520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits
d_HasDeposits_522 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-DState
d_HasDeposits'45'DState_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1698
d_HasDeposits'45'DState_526
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_2008
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-GState
d_HasDeposits'45'GState_528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1698
d_HasDeposits'45'GState_528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_2022
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-PState
d_HasDeposits'45'PState_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1698
d_HasDeposits'45'PState_530
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_2014
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits
d_HasDirectDeposits_532 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526
d_HasDirectDeposits'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4634
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526
d_HasDirectDeposits'45'TxBody_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4632
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4688
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4686
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch
d_HasEpoch_544 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1958
d_HasEpoch'45'CertEnv_548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_2044
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1958
d_HasEpoch'45'GovCertEnv_550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_2042
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?
d_HasFees'63'_552 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306
d_HasFees'63''45'Tx_556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4680
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306
d_HasFees'63''45'TxBody_558
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4674
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools
d_HasFuturePools_560 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1778
d_HasFuturePools'45'PState_564
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_2012
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState
d_HasGState_566 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1918
d_HasGState'45'CertState_570
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_2028
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction
d_HasGovAction_572 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovActionState_576
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovProposal_578
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_580 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovAction_584
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovActionState_586
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovProposal_588
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_590 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_594 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
d_HasGovVoter'45'GovVote_598
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_600 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
d_HasGovVotes'45'GovActionState_604
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards
d_HasGuards_606 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-Tx
d_HasGuards'45'Tx_610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426
d_HasGuards'45'Tx_610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4698
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426
d_HasGuards'45'TxBody_612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4696
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag
d_HasIsValidFlag_614 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586
d_HasIsValidFlag'45'Tx_618
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals
d_HasListOfGovProposals_620 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386
d_HasListOfGovProposals'45'Tx_624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386
d_HasListOfGovProposals'45'TxBody_626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes
d_HasListOfGovVotes_628 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406
d_HasListOfGovVotes'45'Tx_632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406
d_HasListOfGovVotes'45'TxBody_634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_636 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue
d_HasMintedValue_644 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
d_HasMintedValue'45'Tx_648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
d_HasMintedValue'45'TxBody_650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_652 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_656
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_658
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_660
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams
d_HasPParams_662 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'CertEnv_666
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1994
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'GovCertEnv_668
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1996
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState
d_HasPState_670 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898
d_HasPState'45'CertState_674
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_2026
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy
d_HasPolicy_676 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
d_HasPolicy'45'GovProposal_680
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools
d_HasPools_682 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758
d_HasPools'45'CertState_686
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_2036
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758
d_HasPools'45'PState_688
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_2010
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers
d_HasRedeemers_690 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
d_HasRedeemers'45'Tx_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
d_HasRedeemers'45'TxWitnesses_696
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs
d_HasReferenceInputs_698 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
d_HasReferenceInputs'45'Tx_702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
d_HasReferenceInputs'45'TxBody_704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_706 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486
d_HasRequiredSingerHashes'45'Tx_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4710
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486
d_HasRequiredSingerHashes'45'TxBody_712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4708
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_714 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_234
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring
d_HasRetiring_716 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1798
d_HasRetiring'45'PState_720
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_2016
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_722 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_726 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_726
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_728 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_728
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards
d_HasRewards_730 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1818
d_HasRewards'45'CertState_734
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_2030
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1818
d_HasRewards'45'DState_736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_2006
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts
d_HasScripts_738 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-Tx
d_HasScripts'45'Tx_742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446
d_HasScripts'45'Tx_742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4702
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446
d_HasScripts'45'TxWitnesses_744
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4700
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize
d_HasSize_746 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize-Tx
d_HasSize'45'Tx_750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
d_HasSize'45'Tx_750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs
d_HasSpendInputs_752 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
d_HasSpendInputs'45'Tx_756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
d_HasSpendInputs'45'TxBody_758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake
d_HasStake_760 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_764 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1858
d_HasStakeDelegs'45'CertState_768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_2040
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1858
d_HasStakeDelegs'45'DState_770
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_2004
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_772 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566
d_HasStartingBalanceIntervals'45'Tx_776
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566
d_HasStartingBalanceIntervals'45'TxBody_778
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4640
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions
d_HasSubTransactions_780 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144
d_HasSubTransactions'45'TopLevelTx_784
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards
d_HasTopLevelGuards_786 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206
d_HasTopLevelGuards'45'Tx_790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206
d_HasTopLevelGuards'45'TxBody_792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_794 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_794
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_232
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody
d_HasTxBody_796 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032
d_HasTxBody'45'Tx_800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees
d_HasTxFees_802 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120
d_HasTxFees'45'TopLevelTx_806
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId
d_HasTxId_808 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
d_HasTxId'45'Tx_812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4684
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
d_HasTxId'45'TxBody_814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4682
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts
d_HasTxOuts_816 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
d_HasTxOuts'45'Tx_820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
d_HasTxOuts'45'TxBody_822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4704
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses
d_HasTxWitnesses_824 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054
d_HasTxWitnesses'45'Tx_828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO
d_HasUTxO_830 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval
d_HasValidInterval_834 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
d_HasValidInterval'45'Tx_838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
d_HasValidInterval'45'TxBody_840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote
d_HasVote_842 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
d_HasVote'45'GovVote_846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_848 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
d_HasVoteDelegs'45'CertState_852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_2038
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168
d_HasVoteDelegs'45'DState_854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_2002
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes
d_HasVotes_856 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_860 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.HashProtected
d_HashProtected_868 :: () -> ()
d_HashProtected_868 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_870 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_360
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_872 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_872
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_874 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_874
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_876 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_876
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_878 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_878
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2766
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HsGovParams
d_HsGovParams_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864
d_HsGovParams_880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.InBalanceInterval
d_InBalanceInterval_882 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique
d_IsBLSUnique_886 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsBLSUnique_886 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique?
d_IsBLSUnique'63'_888 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBLSUnique'63'_888
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsBLSUnique'63'_2272
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_890 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_892 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_892
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_314
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert
d_IsConwayCert_894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494 -> ()
d_IsConwayCert_894 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert?
d_IsConwayCert'63'_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_896
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1670
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_900 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_902 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_902
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_904 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_908 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_912 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsPoolRegistered
d_IsPoolRegistered_916 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_916 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsVRFUnique
d_IsVRFUnique_918 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsVRFUnique_918 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP
d_IsValidBLSPoP_920 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsValidBLSPoP_920 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP?
d_IsValidBLSPoP'63'_922 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsValidBLSPoP'63'_922
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsValidBLSPoP'63'_2278
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidFlagOf
d_IsValidFlagOf_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586 ->
  AgdaAny -> Bool
d_IsValidFlagOf_924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ix
d_Ix_926 :: ()
d_Ix_926 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_928 :: ()
d_THash_928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.KeyPair
d_KeyPair_932 :: ()
d_KeyPair_932 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LangDepView
d_LangDepView_934 :: ()
d_LangDepView_934 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Language
d_Language_936 :: ()
d_Language_936 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_938 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_946 :: Integer
d_MaxKESEvo'7580'_946
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_948 :: Integer
d_MaxLovelaceSupply'7580'_948
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_950 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_950 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_952 :: ()
d_MemoryEstimate_952 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.MintedValueOf
d_MintedValueOf_954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286 ->
  AgdaAny -> Integer
d_MintedValueOf_954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NativeScript
d_NativeScript_958 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.NeedsHash
d_NeedsHash_960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_NeedsHash_960 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Network
d_Network_962 :: ()
d_Network_962 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkId
d_NetworkId_966 :: Integer
d_NetworkId_966
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_968 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_968 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  ()
d_NoOverlappingSpendInputs_974 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_976 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_976
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_978 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_978
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_980 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_980
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_982 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_982
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UpdateT
d_UpdateT_1010 :: ()
d_UpdateT_1010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PState
d_PState_1012 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PStateOf
d_PStateOf_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_PStateOf_1016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1906
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV2
d_PlutusV2_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1026
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV3
d_PlutusV3_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1028
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV4
d_PlutusV4_1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1030
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Policy
d_Policy_1032 :: ()
d_Policy_1032 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PolicyOf
d_PolicyOf_1034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolDepositsRegistered
d_PoolDepositsRegistered_1036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  ()
d_PoolDepositsRegistered_1036 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv
d_PoolEnv_1038 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_1042 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Pools
d_Pools_1046 :: ()
d_Pools_1046 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolsOf
d_PoolsOf_1048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1050 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1050
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Prices
d_Prices_1052 :: ()
d_Prices_1052 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1054 :: ()
d_ProposedPPUpdates_1054 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Quorum
d_Quorum_1056 :: Integer
d_Quorum_1056
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1058 :: Integer
d_RandomnessStabilisationWindow_1058
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1060 :: Integer
d_RandomnessStabilisationWindow'7580'_1060
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Redeemer
d_Redeemer_1062 :: ()
d_Redeemer_1062 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemerPtr
d_RedeemerPtr_1064 :: ()
d_RedeemerPtr_1064 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemersOf
d_RedeemersOf_1066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Retiring
d_Retiring_1086 :: ()
d_Retiring_1086 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RetiringOf
d_RetiringOf_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1806
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1826
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
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptHash
d_ScriptHash_1112 :: ()
d_ScriptHash_1112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_1116 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptsOf
d_ScriptsOf_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ser
d_Ser_1124 :: ()
d_Ser_1124 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_1126 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1126
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_1128 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1128 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_352
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1130 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_356
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1132 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1132
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_780
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_1134 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_1136 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1136
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_1138 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1138
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Language
d_Show'45'Language_1140 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1142 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Network
d_Show'45'Network_1144 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_1146 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_784
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1148 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1148
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_782
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_1150 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1152 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1152
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_354
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1154 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1156 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1158 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1160 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_1162 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1486
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Sig
d_Sig_1164 :: ()
d_Sig_1164 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SizeOf
d_SizeOf_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186 ->
  AgdaAny -> Integer
d_SizeOf_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Slot
d_Slot_1168 :: ()
d_Slot_1168 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotLengthᶜ
d_SlotLength'7580'_1170 :: Integer
d_SlotLength'7580'_1170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1172 :: Integer
d_SlotsPerEpoch'7580'_1172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1174 :: Integer
d_SlotsPerKESPeriod'7580'_1174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Slotʳ
d_Slot'691'_1176 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SpendInputsOf
d_SpendInputsOf_1178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_1180 :: Integer
d_StabilityWindow_1180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1182 :: Integer
d_StabilityWindow'7580'_1182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Stake
d_Stake_1184 :: ()
d_Stake_1184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_1186 :: ()
d_StakeDelegs_1186 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_1188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1858 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1866
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeOf
d_StakeOf_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1838 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_1192 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState
d_StakePoolState_1196 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_1200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4574
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SubLevelTx
d_SubLevelTx_1202 :: ()
d_SubLevelTx_1202 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SubTransactionsOf
d_SubTransactionsOf_1204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1206 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1208 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1210 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_1212 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_1216 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelTx
d_TopLevelTx_1222 :: ()
d_TopLevelTx_1222 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx
d_Tx_1228 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody
d_TxBody_1232 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_1236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_TxBodyOf_1236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxFeesOf
d_TxFeesOf_1238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxId
d_TxId_1240 :: ()
d_TxId_1240 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIdOf
d_TxIdOf_1242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166 ->
  AgdaAny -> Integer
d_TxIdOf_1242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIn
d_TxIn_1244 :: ()
d_TxIn_1244 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOut
d_TxOut_1246 :: ()
d_TxOut_1246 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOutsOf
d_TxOutsOf_1248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_1250 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnessesOf
d_TxWitnessesOf_1254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_TxWitnessesOf_1254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxO
d_UTxO_1256 :: ()
d_UTxO_1256 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxOOf
d_UTxOOf_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Update
d_Update_1260 :: ()
d_Update_1260 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VDeleg
d_VDeleg_1272 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.VKey
d_VKey_1274 :: ()
d_VKey_1274 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_1276 :: ()
d_VKeyAddr_1276 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1278 :: ()
d_VKeyBaseAddr_1278 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VRF
d_VRF_1282 :: ()
d_VRF_1282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ValidIntervalOf
d_ValidIntervalOf_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Value
d_Value_1286 :: ()
d_Value_1286 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1288 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1288
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_1290 :: ()
d_VoteDelegs_1290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteOf
d_VoteOf_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VotesOf
d_VotesOf_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1978 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_VotesOf_1296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Withdrawals
d_Withdrawals_1298 :: ()
d_Withdrawals_1298 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_1300 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_1302 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1302
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1664
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_1304 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1306
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.HSStructures._.addEpoch
d_addEpoch_1308 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1308
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addSlot
d_addSlot_1310 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1310
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addValue
d_addValue_1312 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1312
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.allDCerts
d_allDCerts_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_allDCerts_1314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4852
-- Ledger.Dijkstra.Foreign.HSStructures._.allMintedCoin
d_allMintedCoin_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_allMintedCoin_1316
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4836
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceInputs
d_allReferenceInputs_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4738
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceScripts
d_allReferenceScripts_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1320
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4782
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputs
d_allSpendInputs_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4730
-- Ledger.Dijkstra.Foreign.HSStructures._.allTxOuts
d_allTxOuts_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allTxOuts_1324
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allTxOuts_4746
-- Ledger.Dijkstra.Foreign.HSStructures._.allWitnessScripts
d_allWitnessScripts_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1326
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4794
-- Ledger.Dijkstra.Foreign.HSStructures._.applyFPools
d_applyFPools_1328 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_applyFPools_1328
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_applyFPools_1462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.applyUpdate
d_applyUpdate_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_1330
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin
d_coin_1336 :: Integer -> Integer
d_coin_1336
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1338 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1338 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromDeposits
d_coinFromDeposits_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  Integer
d_coinFromDeposits_1340
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromDeposits_2212
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromRewards
d_coinFromRewards_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  Integer
d_coinFromRewards_1342
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromRewards_2210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1344
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1346 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_1348 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1348
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.cwitness
d_cwitness_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1510
-- Ledger.Dijkstra.Foreign.HSStructures._.dataOfTx
d_dataOfTx_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [Integer]
d_dataOfTx_1352 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4818
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_1360 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1360
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epoch
d_epoch_1362 :: Integer -> Integer
d_epoch_1362
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epochStructure
d_epochStructure_1364 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.HSStructures._.firstSlot
d_firstSlot_1382 :: Integer -> Integer
d_firstSlot_1382
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1384 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1384
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.gaData
d_gaData_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.gaType
d_gaType_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_1388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.getAllScripts
d_getAllScripts_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1390
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4808
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1392 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1392
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_332
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxData
d_getTxData_1394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [Integer]
d_getTxData_1394 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4828
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxScripts
d_getTxScripts_1396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1396
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4802
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.globalConstants
d_globalConstants_1398 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_1398
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.HSStructures._.govParams
d_govParams_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864
d_govParams_1400
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1402
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1134
-- Ledger.Dijkstra.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1404 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1404
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.inject
d_inject_1406 :: Integer -> Integer
d_inject_1406
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1408 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1408
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_282
-- Ledger.Dijkstra.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1130
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1412 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1414 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1414
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1416 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1416
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1418 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1418 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1420 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1420 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script
d_isP1Script_1422 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1422 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1424
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script
d_isP2Script_1426 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1426 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1428 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
-- Ledger.Dijkstra.Foreign.HSStructures._.isScript
d_isScript_1430 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1432 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1432 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1434 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1434
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1436 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned
d_isSigned_1438 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1438 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1440 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKey
d_isVKey_1442 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1444 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.khs
d_khs_1446 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1446
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.language
d_language_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1448
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.leiosCryptoStructure
d_leiosCryptoStructure_1452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1452
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1454
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4844
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3 v4)
-- Ledger.Dijkstra.Foreign.HSStructures._.mkStakePoolState
d_mkStakePoolState_1460 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390
d_mkStakePoolState_1460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_mkStakePoolState_1422
-- Ledger.Dijkstra.Foreign.HSStructures._.monoid
d_monoid_1462 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1462
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.netId
d_netId_1464 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1464
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
-- Ledger.Dijkstra.Foreign.HSStructures._.newCertDeposits
d_newCertDeposits_1466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494] ->
  Integer
d_newCertDeposits_1466
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2162
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.onlyBlsKeyUpdated
d_onlyBlsKeyUpdated_1468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  ()
d_onlyBlsKeyUpdated_1468 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.p1s
d_p1s_1470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_1470
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1472 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_712
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  ()
d_paramsWellFormed_1474 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.payCred
d_payCred_1476 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1476
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_254
-- Ledger.Dijkstra.Foreign.HSStructures._.pkk
d_pkk_1478 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1478
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.policies
d_policies_1480 :: Integer -> [Integer]
d_policies_1480
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.poolOwners
d_poolOwners_1482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494 ->
  [Integer]
d_poolOwners_1482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1526
-- Ledger.Dijkstra.Foreign.HSStructures._.positivePParams
d_positivePParams_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [Integer]
d_positivePParams_1484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_504
-- Ledger.Dijkstra.Foreign.HSStructures._.ppUpd
d_ppUpd_1486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830
d_ppUpd_1486
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1488
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  ()
d_ppdWellFormed_1490 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1492 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1492
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.proposedCC
d_proposedCC_1494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1142
-- Ledger.Dijkstra.Foreign.HSStructures._.ps
d_ps_1496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_1496
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1498 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1498
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceData
d_referenceData_1500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1500
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4824
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceScripts
d_referenceScripts_1502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1502
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4776
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.referencedTxOuts
d_referencedTxOuts_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1504
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4764
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.refundCertDeposits
d_refundCertDeposits_1506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494] ->
  Integer
d_refundCertDeposits_1506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2192
-- Ledger.Dijkstra.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554 ->
  Integer
d_rewardsBalance_1514
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2150
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
d_scriptStructure_1516
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_440
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfTx
d_scriptsOfTx_1518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1518 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4772
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1520 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4770
-- Ledger.Dijkstra.Foreign.HSStructures._.sign
d_sign_1522 :: Integer -> Integer -> Integer
d_sign_1522
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.size
d_size_1524 :: Integer -> Integer
d_size_1524
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.slotsFromDuration
d_slotsFromDuration_1526 :: Integer -> Integer
d_slotsFromDuration_1526
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendData
d_spendData_1528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1528
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4822
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendScripts
d_spendScripts_1530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1530
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4774
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendTxOuts
d_spendTxOuts_1532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1532
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4758
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.stakeCred
d_stakeCred_1534 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1534
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_256
-- Ledger.Dijkstra.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1536 :: Integer -> Integer
d_suc'7497'_1536
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1538 :: [Integer] -> Integer
d_sum'7515'_1538
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.toP1Script
d_toP1Script_1540 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344
d_toP1Script_1540
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Foreign.HSStructures._.toP2Script
d_toP2Script_1542 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372
d_toP2Script_1542
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1546 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4820
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToDatum
d_txOutToDatum_1548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4720
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToScript
d_txOutToScript_1550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4716
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToValue
d_txOutToValue_1552 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
-- Ledger.Dijkstra.Foreign.HSStructures._.txidBytes
d_txidBytes_1554 :: Integer -> Integer
d_txidBytes_1554 v0 = coe v0
-- Ledger.Dijkstra.Foreign.HSStructures._.updateGroups
d_updateGroups_1556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_1556
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.validP1Script
d_validP1Script_1566 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344 ->
  ()
d_validP1Script_1566 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1568 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  ()
d_validPlutusScript_1568 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.valuesOfUTxO
d_valuesOfUTxO_1570 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1570
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4728
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessData
d_witnessData_1572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [Integer]
d_witnessData_1572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4826
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessScripts
d_witnessScripts_1574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4792
-- Ledger.Dijkstra.Foreign.HSStructures._.ε
d_ε_1576 :: Integer
d_ε_1576
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1578 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1578 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1580 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1580
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1582 :: Integer -> Integer
d_ℕtoEpoch_1582
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1584 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1584
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_1586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_1586
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.reserves
d_reserves_1638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_reserves_1638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.treasury
d_treasury_1640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_treasury_1640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.hash
d_hash_1644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  Integer
d_hash_1644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.url
d_url_1646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.net
d_net_1660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.pay
d_pay_1662 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.stake
d_stake_1664 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.net
d_net_1670 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1672 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_pay_1672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.coldCredentials
d_coldCredentials_1676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1538 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1550
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1538 ->
  Integer
d_epoch_1678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1546
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.pp
d_pp_1680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1538 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_1680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1548 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.dState
d_dState_1684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554
d_dState_1684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1618
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.gState
d_gState_1686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594
d_gState_1686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.pState
d_pState_1688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_pState_1688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1620
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1698 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1698
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1700
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1702 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1702
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1704 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1704
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1706 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1706
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-VRF
d_DecEq'45'VRF_1708 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1708
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.THash
d_THash_1710 :: ()
d_THash_1710 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1712 :: ()
d_KeyPair_1712 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.SKey
d_SKey_1714 :: ()
d_SKey_1714 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1716 :: ()
d_ScriptHash_1716 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Ser
d_Ser_1718 :: ()
d_Ser_1718 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1720 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1720
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1722 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1722
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Sig
d_Sig_1724 :: ()
d_Sig_1724 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1726 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1726
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VKey
d_VKey_1728 :: ()
d_VKey_1728 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VRF
d_VRF_1730 :: ()
d_VRF_1730 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1732 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1732 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1734 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1734 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1736 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1736 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.khs
d_khs_1738 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1738
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.pkk
d_pkk_1740 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1740
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.sign
d_sign_1742 :: Integer -> Integer -> Integer
d_sign_1742
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.deposits
d_deposits_1762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1570
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.rewards
d_rewards_1764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1568
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1566
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1626 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1638
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pools
d_pools_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1636
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1626 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_1776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1634
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_286
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_290
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1604
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.deposits
d_deposits_1820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1606
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.dreps
d_dreps_1822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaData
d_gaData_1826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_1826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaType
d_gaType_1828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_1828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.action
d_action_1832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_1832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1122
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.deposit
d_deposit_1834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  Integer
d_deposit_1834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  Integer
d_expiresIn_1836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1120
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  AgdaAny
d_prevAction_1838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1124
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.votes
d_votes_1842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_votes_1842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.coldCredentials
d_coldCredentials_1862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1654 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1666
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.epoch
d_epoch_1864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1654 ->
  Integer
d_epoch_1864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1662
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.pp
d_pp_1866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_1866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1664 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  ()
d_UpdateT_1872 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_1874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830
d_ppUpd_1876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny -> ()
d_ppdWellFormed_1880 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_1882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.action
d_action_1886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_1886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1088
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.anchor
d_anchor_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.deposit
d_deposit_1890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Integer
d_deposit_1890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1094
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.policy
d_policy_1892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Maybe Integer
d_policy_1892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.prevAction
d_prevAction_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  AgdaAny
d_prevAction_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.returnAddr
d_returnAddr_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1096
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.anchor
d_anchor_1908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.gid
d_gid_1910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.vote
d_vote_1912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_vote_1912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.voter
d_voter_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_voter_1914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvCredential
d_gvCredential_1918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_1918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvRole
d_gvRole_1920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946
d_gvRole_1920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvCC
d_gvCC_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1048
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvDRep
d_gvDRep_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1050
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvSPO
d_gvSPO_1928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_1932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  Bool
d_'61''61''45'GovAction_1932
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1524
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_1934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1934
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1506
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_1936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Bool
d_'61''61''45'GovProposal_1936
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1558
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_1938 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1938 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1494
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Anchor
d_Anchor_1940 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.AnchorOf
d_AnchorOf_1944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_1944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DReps
d_DReps_1952 :: ()
d_DReps_1952 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DRepsOf
d_DRepsOf_1954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_1956 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1956
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1958 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1958
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1960 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1960
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1962 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1386
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1964
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1556
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1966
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DepositOf
d_DepositOf_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovAction
d_GovAction_1972 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionData
d_GovActionData_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_GovActionData_1976 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionID
d_GovActionID_1978 :: ()
d_GovActionID_1978 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionOf
d_GovActionOf_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionState
d_GovActionState_1982 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionType
d_GovActionType_1986 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovProposal
d_GovProposal_1990 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRole
d_GovRole_1994 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946 ->
  ()
d_GovRoleCredential_1996 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVote
d_GovVote_1998 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoter
d_GovVoter_2002 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotes
d_GovVotes_2008 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2014 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
d_HasAnchor'45'GovProposal_2018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2020 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2022 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2022
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1484
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2024 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2026 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps
d_HasDReps_2028 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2032 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
d_HasDeposit'45'GovProposal_2036
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2038 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovActionState_2042
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovProposal_2044
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2046 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovAction_2050
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovActionState_2052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovProposal_2054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2056 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
d_HasGovVoter'45'GovVote_2060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2062 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
d_HasGovVotes'45'GovActionState_2066
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2068 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
d_HasPolicy'45'GovProposal_2072
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2074 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2076 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote
d_HasVote_2078 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
d_HasVote'45'GovVote_2082
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2084 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HashProtected
d_HashProtected_2088 :: () -> ()
d_HashProtected_2088 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_NeedsHash_2092 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Policy
d_Policy_2098 :: ()
d_Policy_2098 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2104 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2106 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2106
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1486
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VDeleg
d_VDeleg_2114 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Vote
d_Vote_2116 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2118 :: ()
d_VoteDelegs_2118 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteOf
d_VoteOf_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_2122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2126 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2126
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1664
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2128 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2128 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaData
d_gaData_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_2130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaType
d_gaType_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_2132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2134
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1134
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1130
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.proposedCC
d_proposedCC_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2140
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1142
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_2156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_2168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_2172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_2176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_2180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nativeScript
d_nativeScript_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324
d_nativeScript_2212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_352
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_2214 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344 ->
  Integer
d_nsScriptHash_2214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344 ->
  Integer
d_nsScriptSize_2216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_356
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  Integer
d_psScriptHash_2220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_380
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_372 ->
  Integer
d_psScriptSize_2224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_382
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount.AccountOf
d_AccountOf_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_216 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_AccountOf_2228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2232 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2232 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_756 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_2248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1938 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_CertStateOf_2248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1738 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_2260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_2268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_2268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_2272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1554
d_DStateOf_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData.DataOf
d_DataOf_2276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366 ->
  AgdaAny -> [Integer]
d_DataOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_2280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch.EpochOf
d_EpochOf_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1958 ->
  AgdaAny -> Integer
d_EpochOf_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_2296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_2296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_2300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1918 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1594
d_GStateOf_2300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_2304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards.GuardsOf
d_GuardsOf_2308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_2316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_2320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286 ->
  AgdaAny -> Integer
d_MintedValueOf_2328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_2336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_2340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_PStateOf_2340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_2344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1806
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_2368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize.SizeOf
d_SizeOf_2376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186 ->
  AgdaAny -> Integer
d_SizeOf_2376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1838 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1858 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1866
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_2392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4574
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_TxBodyOf_2404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_2412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166 ->
  AgdaAny -> Integer
d_TxIdOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_TxWitnessesOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes.VotesOf
d_VotesOf_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1978 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_VotesOf_2432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2458 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2462 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2464 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2466 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2470 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2472 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2476 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2476 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2478 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2478 ~v0 v1 = du_isMagmaMonomorphism_2478 v1
du_isMagmaMonomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2484 v0
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
d_isRelIsomorphism_2486 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2486 ~v0 v1 = du_isRelIsomorphism_2486 v1
du_isRelIsomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2488 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2488 ~v0 v1 = du_isRelMonomorphism_2488 v1
du_isRelMonomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2488 v0
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
d_surjective_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2490 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2492 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2494 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2498 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2500 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2504 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2504 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2506 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2510 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2510 ~v0 v1 = du_isRelMonomorphism_2510 v1
du_isRelMonomorphism_2510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2510 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2512 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_2514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2514 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  ()
d_P1Script_2544 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2546 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.Emax
d_Emax_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_Emax_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a
d_a_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_a_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a0
d_a0_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.b
d_b_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_b_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMaxTermLength_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMinSize_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_coinsPerUTxOByte_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_collateralPercentage_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdls
d_costmdls_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2578
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_500
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepActivity_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepDeposit_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_496
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionDeposit_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionLifetime_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_keyDeposit_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosCommitteeSize_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosDiffusionPeriod_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosHeaderPeriod_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBSize_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBTxsSize_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosVotingPeriod_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxBlockSize_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxCollateralInputs_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxHeaderSize_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerBlock_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerTx_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxTxSize_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxValSize_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minPoolCost
d_minPoolCost_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minPoolCost_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minUTxOValue_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.nopt
d_nopt_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_nopt_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_poolDeposit_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.prices
d_prices_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.pv
d_pv_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  ()
d_UpdateT_2656 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny -> ()
d_ppdWellFormed_2662 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2668 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2668 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1576
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d__'8746''737''7580''7504'__2670
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_696
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                             (coe v3))))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2672 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2672
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1828
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2674 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyPParamsUpdate_2678
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1630
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_modifiedUpdateGroups_2680
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1560
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesEconomicGroup_2682
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1176
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesGovernanceGroup_2684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesNetworkGroup_2686
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_1080
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesSecurityGroup_2688
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1464
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesTechnicalGroup_2690
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1272
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  ()
d_paramsUpdateWellFormed_2692 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2694 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_880
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_882
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_884
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_886
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_928
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_920
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_950
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_968
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_958
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_960
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_962
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_908
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2696 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1590
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_Emax_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_a_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_914 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_b_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_916 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_ccMaxTermLength_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_ccMinSize_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_coinsPerUTxOByte_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_collateralPercentage_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_drepActivity_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_drepDeposit_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_govActionDeposit_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_govActionLifetime_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_keyDeposit_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosCommitteeSize_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosDiffusionPeriod_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosHeaderPeriod_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxEBSize_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosVotingPeriod_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxBlockSize_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxCollateralInputs_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxHeaderSize_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxTxSize_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxValSize_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_minPoolCost_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_minUTxOValue_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_nopt_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_poolDeposit_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.deposits
d_deposits_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.fPools
d_fPools_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.pools
d_pools_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.retiring
d_retiring_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure._≤ᵉᵘ_
d__'8804''7497''7512'__2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__2812 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.0ᵉᵘ
d_0'7497''7512'_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_0'7497''7512'_2814
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_CostModel_2816 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T
d_T_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_T_2818 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_THash_2820 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Datum_2824 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2838 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2840 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_ExUnits_2844 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_2846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_LangDepView_2850 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Language_2852 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_PlutusScript_2854 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV1_2856
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV2_2858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV3_2860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV4
d_PlutusV4_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV4_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Prices_2864 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Redeemer_2866 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2876 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2878 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.language
d_language_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny
d_language_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2886 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.epoch
d_epoch_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1642 ->
  Integer
d_epoch_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1648
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.pp
d_pp_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1642 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pp_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1650 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_310
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.net
d_net_2910 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2910 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.stake
d_stake_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure._≤ᵉᵘ_
d__'8804''7497''7512'__2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__2916 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.0ᵉᵘ
d_0'7497''7512'_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_0'7497''7512'_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_CostModel_2920 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T
d_T_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_T_2922 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_THash_2924 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Datum_2928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2948 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2950 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_ExUnits_2954 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2962
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_LangDepView_2964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Language_2966 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2968 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_P1Script_2972 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_PlutusScript_2974 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV1_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV2_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV3_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV4
d_PlutusV4_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV4_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Prices_2984 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Redeemer_2986 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Script_2988 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3000 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3002 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3004 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3010 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3012 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3014 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3016 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3018 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.language
d_language_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny
d_language_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ps
d_ps_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_3028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3034 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3036 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.bls
d_bls_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1386
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.cost
d_cost_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  Integer
d_cost_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1376
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.margin
d_margin_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1378
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.owners
d_owners_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  [Integer]
d_owners_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  Integer
d_pledge_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1380
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1382
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.vrf
d_vrf_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1358 ->
  Integer
d_vrf_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1384
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.bls
d_bls_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.cost
d_cost_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  Integer
d_cost_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.margin
d_margin_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.owners
d_owners_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  [Integer]
d_owners_3068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.pledge
d_pledge_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  Integer
d_pledge_3070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.rewardAccount
d_rewardAccount_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.vrf
d_vrf_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1390 ->
  Integer
d_vrf_3074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3078 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3080 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3082 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3088 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3092 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3096 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3100 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3116 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3120 v0
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
d_size_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3126 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3134 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3136 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3138 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3148 ~v0 = du_isMagmaIsomorphism_3148
du_isMagmaIsomorphism_3148 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3148 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3150 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3150 v2
du_isMagmaMonomorphism_3150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3156 v0
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
d_isRelIsomorphism_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3158 ~v0 ~v1 v2 = du_isRelIsomorphism_3158 v2
du_isRelIsomorphism_3158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3160 ~v0 ~v1 v2 = du_isRelMonomorphism_3160 v2
du_isRelMonomorphism_3160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3160 v0
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
d_surjective_3162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3164 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3166 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3170 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3176 ~v0 = du_isMagmaMonomorphism_3176
du_isMagmaMonomorphism_3176 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3176 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3182 ~v0 ~v1 v2 = du_isRelMonomorphism_3182 v2
du_isRelMonomorphism_3182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3186 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.isValid
d_isValid_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_isValid_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txAuxData
d_txAuxData_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Maybe Integer
d_txAuxData_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txBody
d_txBody_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_txBody_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txSize
d_txSize_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_txSize_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txWitnesses
d_txWitnesses_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_txWitnesses_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_collateralInputs_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe Integer
d_currentTreasury_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3978
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.mint
d_mint_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Integer
d_mint_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.referenceInputs
d_referenceInputs_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [Integer]
d_requiredSignerHashes_3210 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3996
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe Integer
d_scriptIntegrityHash_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe Integer
d_txADhash_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_txCerts_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Integer
d_txDonation_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txFee
d_txFee_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txFee_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_txGovProposals_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGuards
d_txGuards_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txId
d_txId_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Integer
d_txId_3232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txIns
d_txIns_3234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe Integer
d_txNetworkId_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3976
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txStartingBalanceIntervals_3242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txSubTransactions
d_txSubTransactions_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txSubTransactions_3244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_4010
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_344]
d_scriptsP1_3254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_4016
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txData
d_txData_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [Integer]
d_txData_3256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_4012
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_4008
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_3274 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_3274
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_3276 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_3276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_3280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-TxLevel
d_DecEq'45'TxLevel_3282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxLevel_3282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxLevel_36
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLanguage
d_HSLanguage_3286 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_3288 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_3288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InLevel
d_InLevel_3290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_InLevel_3290 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_InLevel_18
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InSubLevel
d_InSubLevel_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InSubLevel_3292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InTopLevel
d_InTopLevel_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InTopLevel_3294 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_3310 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_3310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.Tag
d_Tag_3314 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_3316 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TxLevel
d_TxLevel_3322 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__3356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__3358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3360 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3362 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≤ᵉᵘ_
d__'8804''7497''7512'__3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__3364 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3366 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_3368 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.0ᵉᵘ
d_0'7497''7512'_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_0'7497''7512'_3370 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  Bool
d_'61''61''45'GovAction_3372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Bool
d_'61''61''45'GovProposal_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1558
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3378 ~v0 = du_'61''61''45'Set_3378
du_'61''61''45'Set_3378 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1494
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3380 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountBalanceIntervals
d_AccountBalanceIntervals_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AccountBalanceIntervals_3382 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountOf
d_AccountOf_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_216 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_AccountOf_3384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_3386 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_3390 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Addr_3392 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_3396 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnchorOf
d_AnchorOf_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_3400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AnyLevelTx_3402 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_3404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_3404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AuxiliaryData_3406 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceInterval
d_BalanceInterval_3408 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceIntervalsOf
d_BalanceIntervalsOf_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_3412 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_3416 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_756 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CollateralInputsOf
d_CollateralInputsOf_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_3428 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_3430 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_3432 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CurrentTreasuryOf
d_CurrentTreasuryOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_3440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T
d_T_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_3444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3446 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DataOf
d_DataOf_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366 ->
  AgdaAny -> [AgdaAny]
d_DataOf_3448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_3452 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_3454 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_394
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_946 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3456 ~v0
  = du_Dec'45'InBalanceInterval_3456
du_Dec'45'InBalanceInterval_3456 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_946 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_980
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_3458 ~v0 = du_Dec'45'isScript_3458
du_Dec'45'isScript_3458 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_3458
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_300
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_3460 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_3462 ~v0 = du_Dec'45'isVKey_3462
du_Dec'45'isVKey_3462 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_3462
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3474 ~v0
  = du_DecEq'45'BalanceInterval_3474
du_DecEq'45'BalanceInterval_3474 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1104
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_3476 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_336
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_3478 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_338
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_3482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_3484 ~v0
  = du_DecEq'45'DrepThresholds_3484
du_DecEq'45'DrepThresholds_3484 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_3484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_772
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_3486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3490 ~v0 = du_DecEq'45'GovActionType_3490
du_DecEq'45'GovActionType_3490 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3490
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3492 ~v0 = du_DecEq'45'GovRole_3492
du_DecEq'45'GovRole_3492 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1386
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_3496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NativeScript
d_DecEq'45'NativeScript_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_3504 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_340
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_3508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_3512 ~v0 = du_DecEq'45'PParamGroup_3512
du_DecEq'45'PParamGroup_3512 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_3512
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_778
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_776
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_3516 ~v0
  = du_DecEq'45'PoolThresholds_3516
du_DecEq'45'PoolThresholds_3516 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_3516
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_774
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_3518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_3520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_3522 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_3524 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_3526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3528 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3530 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3534 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3536 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_3538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1896
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_3544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3548 ~v0 = du_DecEq'45'Vote_3548
du_DecEq'45'Vote_3548 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_3550 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DepositOf
d_DepositOf_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_3552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDeposits
d_DirectDeposits_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DirectDeposits_3554 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDepositsOf
d_DirectDepositsOf_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_3556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_3558 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_3564 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.EvalNativeScript
d_EvalNativeScript_3566 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_3570 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.FeesOf?
d_FeesOf'63'_3574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_3574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_3576 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_GovActionData_3580 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_3582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_3582 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_3584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_3586 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_3590 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_3592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_3594 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_3598 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_3602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_3604 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_3606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946 ->
  ()
d_GovRoleCredential_3606 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_3608 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_3612 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_3616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_3616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_3618 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_3622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_3622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GuardsOf
d_GuardsOf_3626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_3626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount
d_HasAccount_3628 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_3632 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor
d_HasAnchor_3634 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
d_HasAnchor'45'GovProposal_3638 ~v0
  = du_HasAnchor'45'GovProposal_3638
du_HasAnchor'45'GovProposal_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
du_HasAnchor'45'GovProposal_3638
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_3640 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_3644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_3644 ~v0
  = du_HasAttrSize'45'BootstrapAddr_3644
du_HasAttrSize'45'BootstrapAddr_3644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_3644
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_3646 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_3650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546
d_HasBalanceIntervals'45'Tx_3650 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4638
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_3652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546
d_HasBalanceIntervals'45'TxBody_3652 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4636
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_3654 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_3658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_3658 ~v0 = du_HasCast'45'Acnt_3658
du_HasCast'45'Acnt_3658 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_3658
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_236
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3660 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3660
du_HasCast'45'GovAction'45'Sigma_3660 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3660
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3662 ~v0 = du_HasCast'45'GovVote_3662
du_HasCast'45'GovVote_3662 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3662
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1484
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3664 ~v0
  = du_HasCast'45'HashProtected_3664
du_HasCast'45'HashProtected_3664 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3666 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3666
du_HasCast'45'HashProtected'45'MaybeScriptHash_3666 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3666
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3668
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4690
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_3670 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_3674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096
d_HasCollateralInputs'45'TopLevelTx_3674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_3676 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_3680 ~v0
  = du_HasCredential'45'RewardAddress_3680
du_HasCredential'45'RewardAddress_3680 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_3680
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_3682 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_3686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
d_HasCurrentTreasury'45'Tx_3686 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4714
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
d_HasCurrentTreasury'45'TxBody_3688 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4712
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_3690 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
d_HasDCerts'45'Tx_3694 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
d_HasDCerts'45'TxBody_3696 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_3698 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData
d_HasData_3702 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-Tx
d_HasData'45'Tx_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366
d_HasData'45'Tx_3706 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4694
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366
d_HasData'45'TxWitnesses_3708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4692
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit
d_HasDeposit_3710 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
d_HasDeposit'45'GovProposal_3714 ~v0
  = du_HasDeposit'45'GovProposal_3714
du_HasDeposit'45'GovProposal_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
du_HasDeposit'45'GovProposal_3714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_3716 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526
d_HasDirectDeposits'45'Tx_3720 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4634
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526
d_HasDirectDeposits'45'TxBody_3722 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4632
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_3724 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4688
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_3726 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4686
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?
d_HasFees'63'_3728 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_3732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306
d_HasFees'63''45'Tx_3732 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4680
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306
d_HasFees'63''45'TxBody_3734 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4674
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_3736 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovActionState_3740 ~v0
  = du_HasGovAction'45'GovActionState_3740
du_HasGovAction'45'GovActionState_3740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovActionState_3740
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovProposal_3742 ~v0
  = du_HasGovAction'45'GovProposal_3742
du_HasGovAction'45'GovProposal_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovProposal_3742
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_3744 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovAction_3748 ~v0
  = du_HasGovActionType'45'GovAction_3748
du_HasGovActionType'45'GovAction_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovAction_3748
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovActionState_3750 ~v0
  = du_HasGovActionType'45'GovActionState_3750
du_HasGovActionType'45'GovActionState_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovActionState_3750
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovProposal_3752 ~v0
  = du_HasGovActionType'45'GovProposal_3752
du_HasGovActionType'45'GovProposal_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovProposal_3752
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_3754 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_3758 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
d_HasGovVoter'45'GovVote_3762 ~v0 = du_HasGovVoter'45'GovVote_3762
du_HasGovVoter'45'GovVote_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
du_HasGovVoter'45'GovVote_3762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_3764 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
d_HasGovVotes'45'GovActionState_3768 ~v0
  = du_HasGovVotes'45'GovActionState_3768
du_HasGovVotes'45'GovActionState_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
du_HasGovVotes'45'GovActionState_3768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards
d_HasGuards_3770 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426
d_HasGuards'45'Tx_3774 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4698
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426
d_HasGuards'45'TxBody_3776 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4696
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_3778 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586
d_HasIsValidFlag'45'Tx_3782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_3784 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386
d_HasListOfGovProposals'45'Tx_3788 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386
d_HasListOfGovProposals'45'TxBody_3790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_3792 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406
d_HasListOfGovVotes'45'Tx_3796 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406
d_HasListOfGovVotes'45'TxBody_3798 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_3800 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_3804 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_3806 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue
d_HasMintedValue_3808 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
d_HasMintedValue'45'Tx_3812 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
d_HasMintedValue'45'TxBody_3814 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_3816 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_3820 ~v0
  = du_HasNetworkId'45'BaseAddr_3820
du_HasNetworkId'45'BaseAddr_3820 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_3820
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_3822 ~v0
  = du_HasNetworkId'45'BootstrapAddr_3822
du_HasNetworkId'45'BootstrapAddr_3822 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_3822
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_3824 ~v0
  = du_HasNetworkId'45'RewardAddress_3824
du_HasNetworkId'45'RewardAddress_3824 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_3824
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_3826 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_3830 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
d_HasPolicy'45'GovProposal_3834 ~v0
  = du_HasPolicy'45'GovProposal_3834
du_HasPolicy'45'GovProposal_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
du_HasPolicy'45'GovProposal_3834
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers
d_HasRedeemers_3836 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_3840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
d_HasRedeemers'45'Tx_3840 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
d_HasRedeemers'45'TxWitnesses_3842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_3844 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
d_HasReferenceInputs'45'Tx_3848 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
d_HasReferenceInputs'45'TxBody_3850 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_3852 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486
d_HasRequiredSingerHashes'45'Tx_3856 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4710
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486
d_HasRequiredSingerHashes'45'TxBody_3858 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4708
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_3860 ~v0 = du_HasReserves'45'Acnt_3860
du_HasReserves'45'Acnt_3860 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_3860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_234
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_3862 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3866 ~v0
  = du_HasRewardAddress'45'GovActionState_3866
du_HasRewardAddress'45'GovActionState_3866 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3868 ~v0
  = du_HasRewardAddress'45'GovProposal_3868
du_HasRewardAddress'45'GovProposal_3868 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3868
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts
d_HasScripts_3870 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446
d_HasScripts'45'Tx_3874 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4702
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446
d_HasScripts'45'TxWitnesses_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4700
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize
d_HasSize_3878 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
d_HasSize'45'Tx_3882 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs
d_HasSpendInputs_3884 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
d_HasSpendInputs'45'Tx_3888 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
d_HasSpendInputs'45'TxBody_3890 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_3892 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566
d_HasStartingBalanceIntervals'45'Tx_3896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_3898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566
d_HasStartingBalanceIntervals'45'TxBody_3898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4640
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions
d_HasSubTransactions_3900 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_3904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144
d_HasSubTransactions'45'TopLevelTx_3904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_3906 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_3910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206
d_HasTopLevelGuards'45'Tx_3910 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_3912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206
d_HasTopLevelGuards'45'TxBody_3912 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_3914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_3914 ~v0 = du_HasTreasury'45'Acnt_3914
du_HasTreasury'45'Acnt_3914 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_3914
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_3916 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032
d_HasTxBody'45'Tx_3920 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees
d_HasTxFees_3922 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120
d_HasTxFees'45'TopLevelTx_3926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_3928 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
d_HasTxId'45'Tx_3932 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4684
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
d_HasTxId'45'TxBody_3934 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4682
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts
d_HasTxOuts_3936 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_3940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
d_HasTxOuts'45'Tx_3940 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_3942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
d_HasTxOuts'45'TxBody_3942 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4704
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3944 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_3948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054
d_HasTxWitnesses'45'Tx_3948 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_3950 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval
d_HasValidInterval_3954 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
d_HasValidInterval'45'Tx_3958 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
d_HasValidInterval'45'TxBody_3960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_3962 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
d_HasVote'45'GovVote_3966 ~v0 = du_HasVote'45'GovVote_3966
du_HasVote'45'GovVote_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
du_HasVote'45'GovVote_3966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3968 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3972 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3976 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3978 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_3980 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.InBalanceInterval
d_InBalanceInterval_3990 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3994 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3996 ~v0 = du_IsBootstrapAddr'63'_3996
du_IsBootstrapAddr'63'_3996 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3996
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_314
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_4000 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_4002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_4002 ~v0 = du_IsKeyHashObj'63'_4002
du_IsKeyHashObj'63'_4002 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_4002
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4004 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4008 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4012 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsValidFlagOf
d_IsValidFlagOf_4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586 ->
  AgdaAny -> Bool
d_IsValidFlagOf_4016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ix_4018 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_4020 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_4024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_KeyPair_4024 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_4026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_4026 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Language
d_Language_4028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_4028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_4030 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_4034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovVotesOf
d_ListOfGovVotesOf_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_4036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxKESEvoᶜ
d_MaxKESEvo'7580'_4038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxKESEvo'7580'_4038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_4040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_4042 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_4042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_4044 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MintedValueOf
d_MintedValueOf_4046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_4046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NativeScript
d_NativeScript_4048 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_NeedsHash_4050 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Network
d_Network_4052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Network_4052 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_4056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_4056 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_4058 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_4058 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  ()
d_NoOverlappingSpendInputs_4064 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_4066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_4066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_4068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_4068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_4070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_4070 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_4072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_4072 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_4074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_4074 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_4076 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_4080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_4080 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_4082 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_4084 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_4088 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_4092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_4092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_4094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UpdateT_4094 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusLanguage
d_PlutusLanguage_4096 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_4098 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV1_4102 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV2_4104 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV3_4106 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV4
d_PlutusV4_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_4108 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4110 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_4114 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_4118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_4120 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ProposedPPUpdates_4122 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_4124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_Quorum_4124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_4126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_4126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_4128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_RandomnessStabilisationWindow'7580'_4128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_4130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_4130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemerPtr
d_RedeemerPtr_4132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_4132 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemersOf
d_RedeemersOf_4134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ReferenceInputsOf
d_ReferenceInputsOf_4136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_4154 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_4158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_4158 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_4162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SKey_4162 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Script
d_Script_4166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_4166 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptAddr_4168 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_4170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptBaseAddr_4170 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_4172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_4172 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_4176 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptsOf
d_ScriptsOf_4180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_4184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ser_4184 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_4188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_4188 ~v0 = du_Show'45'Credential_4188
du_Show'45'Credential_4188 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_4188 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_352
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_4190 ~v0
  = du_Show'45'Credential'215'Coin_4190
du_Show'45'Credential'215'Coin_4190 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_4190 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_356
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_4192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_4192 ~v0 = du_Show'45'DrepThresholds_4192
du_Show'45'DrepThresholds_4192 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_4192
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_780
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_4194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_4198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4198 ~v0 = du_Show'45'GovRole_4198
du_Show'45'GovRole_4198 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_4204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_4206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_784
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_4208 ~v0 = du_Show'45'PoolThresholds_4208
du_Show'45'PoolThresholds_4208 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_4208
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_782
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_4212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_4212 ~v0 = du_Show'45'RewardAddress_4212
du_Show'45'RewardAddress_4212 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_4212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_354
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_4214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_4214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4218 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4220 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_4222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_4224 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SizeOf
d_SizeOf_4226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186 ->
  AgdaAny -> Integer
d_SizeOf_4226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_4228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_4228 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotLengthᶜ
d_SlotLength'7580'_4230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotLength'7580'_4230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_4232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_4232 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_4234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerKESPeriod'7580'_4234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_4236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_4236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SpendInputsOf
d_SpendInputsOf_4238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_StabilityWindow_4240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_4242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_StabilityWindow'7580'_4242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4574
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubLevelTx
d_SubLevelTx_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_4246 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubTransactionsOf
d_SubTransactionsOf_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_4248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4250 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4252 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4254 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_4260 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelGuardsOf
d_TopLevelGuardsOf_4264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelTx
d_TopLevelTx_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_4266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_4272 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_4276 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_4280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_TxBodyOf_4280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxFeesOf
d_TxFeesOf_4282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_4282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_4284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxId_4284 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_4286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166 ->
  AgdaAny -> AgdaAny
d_TxIdOf_4286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_4288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_4290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOutsOf
d_TxOutsOf_4292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_4294 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnessesOf
d_TxWitnessesOf_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_TxWitnessesOf_4298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_4300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_4300 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_4302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Update
d_Update_4304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Update_4304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_4316 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_4318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_4318 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_4320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyAddr_4320 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_4322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyBaseAddr_4322 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_4326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VRF_4326 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ValidIntervalOf
d_ValidIntervalOf_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value
d_Value_4330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_4330 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4334 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_4338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_4340 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_4342 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_4342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1664
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_4348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_4350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_4352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_4352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allDCerts
d_allDCerts_4356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_allDCerts_4356 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4852
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allMintedCoin
d_allMintedCoin_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_allMintedCoin_4358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4836
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4360 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4738
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4362
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4782
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputs
d_allSpendInputs_4364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4364 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4730
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allTxOuts
d_allTxOuts_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allTxOuts_4366 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allTxOuts_4746
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4368 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4794
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_4370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_4370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin
d_coin_4374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_4374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_4376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4376 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_4380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4380 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_4382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_4382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.dataOfTx
d_dataOfTx_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [AgdaAny]
d_dataOfTx_4384 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4818
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_4386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_4386 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_4388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_4388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_4390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_4390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_4408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_4408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.fromPlutusLanguage
d_fromPlutusLanguage_4410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_4410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_4412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_4414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getAllScripts
d_getAllScripts_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4416
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4808
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_4418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_4418 ~v0 = du_getScriptHash_4418
du_getScriptHash_4418 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_4418
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxData
d_getTxData_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [AgdaAny]
d_getTxData_4420 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4828
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxScripts
d_getTxScripts_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4422 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4802
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_4424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864
d_govParams_4426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_4428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_4428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4430 ~v0 = du_govVoterCredential_4430
du_govVoterCredential_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1134
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_4432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.inject
d_inject_4434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_4434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_4436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_4436 ~v0 = du_isBootstrapAddr_4436
du_isBootstrapAddr_4436 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_4436
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_282
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4438 ~v0 = du_isGovVoterDRep_4438
du_isGovVoterDRep_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1130
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_4440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_4440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_4442 ~v0 = du_isKeyHashObj_4442
du_isKeyHashObj_4442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_4442
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_4444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_4444 ~v0 = du_isKeyHashObj'7495'_4444
du_isKeyHashObj'7495'_4444 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_4444
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_4446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_4446 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4448 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4450 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4452 ~v0 = du_isP1Script'63'_4452
du_isP1Script'63'_4452 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_4454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4454 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_4456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4456 ~v0 = du_isP2Script'63'_4456
du_isP2Script'63'_4456 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_4458 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_4460 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_4462 ~v0 = du_isScriptObj_4462
du_isScriptObj_4462 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_4462
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_4464 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_4466 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_4468 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_4470 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_4472 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.khs
d_khs_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_4474 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.language
d_language_4476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_4476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_4478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_4480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_4480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4482 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4844
      v0 v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_4488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4488 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.netId
d_netId_4490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_4490 ~v0 = du_netId_4490
du_netId_4490 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_4490
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_4492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_4492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_4494 ~v0 = du_paramsWF'45'elim_4494
du_paramsWF'45'elim_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_4494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_712
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_4496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  ()
d_paramsWellFormed_4496 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_4498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_4498 ~v0 = du_payCred_4498
du_payCred_4498 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_4498
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_254
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_4500 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.policies
d_policies_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny]
d_policies_4502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [Integer]
d_positivePParams_4504 ~v0 = du_positivePParams_4504
du_positivePParams_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [Integer]
du_positivePParams_4504
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_504
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_4506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830
d_ppUpd_4506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_4508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_4510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> ()
d_ppdWellFormed_4510 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_4512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_4512 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4514 ~v0 = du_proposedCC_4514
du_proposedCC_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4514
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1142
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ps
d_ps_4516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_4516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_4518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4518 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceData
d_referenceData_4520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4520 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4824
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceScripts
d_referenceScripts_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4776
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4524 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4764
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
d_scriptStructure_4526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4528 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4772
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4530 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4770
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sign
d_sign_4532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_4532 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.size
d_size_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_size_4534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.slotsFromDuration
d_slotsFromDuration_4536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_slotsFromDuration_4536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendData
d_spendData_4538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4538 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4822
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendScripts
d_spendScripts_4540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4540 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4774
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendTxOuts
d_spendTxOuts_4542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4542 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4758
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_4544 ~v0 = du_stakeCred_4544
du_stakeCred_4544 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_4544
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_256
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_suc'7497'_4546 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_4550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4550 ~v0 = du_toP1Script_4550
du_toP1Script_4550 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_4552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4552 ~v0 = du_toP2Script_4552
du_toP2Script_4552 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_4554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4556 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4820
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToDatum
d_txOutToDatum_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4558 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4720
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToScript
d_txOutToScript_4560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4560 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4716
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToValue
d_txOutToValue_4562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4562 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_txidBytes_4564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_4566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_4566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2760
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_4576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4576 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_4578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4578 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4580 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4728
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessData
d_witnessData_4582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [AgdaAny]
d_witnessData_4582 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4826
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessScripts
d_witnessScripts_4584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4584 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4792
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ε
d_ε_4586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_ε_4586 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_4588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_4588 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_4590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_4590 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_4592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_ℕtoEpoch_4592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_4594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_4594 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_4596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_4596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_4612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_reserves_4612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_208
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_4614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200 ->
  Integer
d_treasury_4614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_4618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  AgdaAny
d_hash_4618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_4620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_4620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_4634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_4634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_4636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_4638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_4642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_4642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_4644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_4644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_4646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_pay_4646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_4656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_4656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_4658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_4658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_4660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_4660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_4662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_4662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_4664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_4664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_4666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_4666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_4670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_286
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_288
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_4674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_4674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_290
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_4694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_4694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_4696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_4696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_4700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_4700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1122
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.deposit
d_deposit_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  Integer
d_deposit_4702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_4704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  AgdaAny
d_expiresIn_4704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1120
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  AgdaAny
d_prevAction_4706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1124
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_4708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1118
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_4710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_votes_4710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_4730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_4730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_4732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  ()
d_UpdateT_4732 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_4734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_4734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830
d_ppUpd_4736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_4738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_4740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny -> ()
d_ppdWellFormed_4740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_4742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1864 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_4742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1882
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.action
d_action_4746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_4746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1088
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.anchor
d_anchor_4748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_4748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1098
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.deposit
d_deposit_4750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Integer
d_deposit_4750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1094
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.policy
d_policy_4752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Maybe AgdaAny
d_policy_4752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1092
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.prevAction
d_prevAction_4754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  AgdaAny
d_prevAction_4754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.returnAddr
d_returnAddr_4756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1096
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.anchor
d_anchor_4768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_4768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.gid
d_gid_4770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_4770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.vote
d_vote_4772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_vote_4772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.voter
d_voter_4774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_voter_4774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvCredential
d_gvCredential_4778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_4778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvRole
d_gvRole_4780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946
d_gvRole_4780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvCC
d_gvCC_4784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_4784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1048
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvDRep
d_gvDRep_4786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_4786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1050
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvSPO
d_gvSPO_4788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_4788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1052
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_4792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  Bool
d_'61''61''45'GovAction_4792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_4794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_4794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_4796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Bool
d_'61''61''45'GovProposal_4796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1558
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_4798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_4798 ~v0 = du_'61''61''45'Set_4798
du_'61''61''45'Set_4798 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_4798 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1494
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Anchor
d_Anchor_4800 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_4804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_4804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DReps
d_DReps_4812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_4812 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_4814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_4814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_4816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_4816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_4818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_4818 ~v0 = du_DecEq'45'GovActionType_4818
du_DecEq'45'GovActionType_4818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_4818
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1378
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_4820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_4820 ~v0 = du_DecEq'45'GovRole_4820
du_DecEq'45'GovRole_4820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_4820
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1380
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_4822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_4822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1386
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_4824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_4824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_4826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_4826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_4828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_4828 ~v0 = du_DecEq'45'Vote_4828
du_DecEq'45'Vote_4828 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_4828
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1382
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_4830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_4830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovAction
d_GovAction_4832 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_4836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_GovActionData_4836 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_4838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_4838 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_4840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_4840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_4842 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_4846 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_4848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_4848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_4850 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRole
d_GovRole_4854 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_4856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946 ->
  ()
d_GovRoleCredential_4856 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVote
d_GovVote_4858 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_4862 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_4866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_4866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_4868 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_4872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_4872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_4874 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_4878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
d_HasAnchor'45'GovProposal_4878 ~v0
  = du_HasAnchor'45'GovProposal_4878
du_HasAnchor'45'GovProposal_4878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
du_HasAnchor'45'GovProposal_4878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_4880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_4880 ~v0
  = du_HasCast'45'GovAction'45'Sigma_4880
du_HasCast'45'GovAction'45'Sigma_4880 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_4880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_4882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_4882 ~v0 = du_HasCast'45'GovVote_4882
du_HasCast'45'GovVote_4882 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_4882
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1484
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_4884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_4884 ~v0
  = du_HasCast'45'HashProtected_4884
du_HasCast'45'HashProtected_4884 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_4884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_4886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_4886 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_4886
du_HasCast'45'HashProtected'45'MaybeScriptHash_4886 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_4886
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_4888 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_4892 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_4896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
d_HasDeposit'45'GovProposal_4896 ~v0
  = du_HasDeposit'45'GovProposal_4896
du_HasDeposit'45'GovProposal_4896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
du_HasDeposit'45'GovProposal_4896
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_4898 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovActionState_4902 ~v0
  = du_HasGovAction'45'GovActionState_4902
du_HasGovAction'45'GovActionState_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovActionState_4902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_4904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovProposal_4904 ~v0
  = du_HasGovAction'45'GovProposal_4904
du_HasGovAction'45'GovProposal_4904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovProposal_4904
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_4906 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_4910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovAction_4910 ~v0
  = du_HasGovActionType'45'GovAction_4910
du_HasGovActionType'45'GovAction_4910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovAction_4910
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_4912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovActionState_4912 ~v0
  = du_HasGovActionType'45'GovActionState_4912
du_HasGovActionType'45'GovActionState_4912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovActionState_4912
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_4914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovProposal_4914 ~v0
  = du_HasGovActionType'45'GovProposal_4914
du_HasGovActionType'45'GovProposal_4914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovProposal_4914
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_4916 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
d_HasGovVoter'45'GovVote_4920 ~v0 = du_HasGovVoter'45'GovVote_4920
du_HasGovVoter'45'GovVote_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
du_HasGovVoter'45'GovVote_4920
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_4922 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_4926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
d_HasGovVotes'45'GovActionState_4926 ~v0
  = du_HasGovVotes'45'GovActionState_4926
du_HasGovVotes'45'GovActionState_4926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
du_HasGovVotes'45'GovActionState_4926
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_4928 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_4932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
d_HasPolicy'45'GovProposal_4932 ~v0
  = du_HasPolicy'45'GovProposal_4932
du_HasPolicy'45'GovProposal_4932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
du_HasPolicy'45'GovProposal_4932
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_4934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_4934 ~v0
  = du_HasRewardAddress'45'GovActionState_4934
du_HasRewardAddress'45'GovActionState_4934 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_4934
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_4936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_4936 ~v0
  = du_HasRewardAddress'45'GovProposal_4936
du_HasRewardAddress'45'GovProposal_4936 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_4936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1374
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote
d_HasVote_4938 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_4942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
d_HasVote'45'GovVote_4942 ~v0 = du_HasVote'45'GovVote_4942
du_HasVote'45'GovVote_4942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
du_HasVote'45'GovVote_4942
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_4944 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_4948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_4948 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_4952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_NeedsHash_4952 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Policy
d_Policy_4958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4958 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_4960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_4964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4964 ~v0 = du_Show'45'GovRole_4964
du_Show'45'GovRole_4964 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4964
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1376
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_4966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_4974 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Vote
d_Vote_4976 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_4978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4978 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_4980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_4982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_4982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_4986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4986 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1664
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_4988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4988 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaData
d_gaData_4990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_4990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaType
d_gaType_4992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_4992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_4994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4994 ~v0 = du_govVoterCredential_4994
du_govVoterCredential_4994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4994
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1134
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_4996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4996 ~v0 = du_isGovVoterDRep_4996
du_isGovVoterDRep_4996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1130
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_5000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_5000 ~v0 = du_proposedCC_5000
du_proposedCC_5000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_5000
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1142
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_5016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_5016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_5020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_5020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_5024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_5024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_5028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_5028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_5032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_5032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_5036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_5036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_5040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_5040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_5044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_5044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_5048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_5048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_5052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_5052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount.AccountOf
d_AccountOf_5072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_216 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_200
d_AccountOf_5072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_224
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_5076 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_5076 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_5080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4546 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_5080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_5084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_756 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_5084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_5088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_5088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_5092 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_5092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_5096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_5096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_5100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_5100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData.DataOf
d_DataOf_5104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4366 ->
  AgdaAny -> [AgdaAny]
d_DataOf_5104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_5108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_5108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_5112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4306 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_5112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_5116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_5116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_5120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4426 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_5120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_5124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586 ->
  AgdaAny -> Bool
d_IsValidFlagOf_5124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_5128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_5128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_5132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_5132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_5136 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_5136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_5140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_5140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_5144 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_5144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_5148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_5148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_5152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_5152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_5156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_5156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_5160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4486 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_5160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_5164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_5164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_5168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4446 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_5168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize.SizeOf
d_SizeOf_5172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186 ->
  AgdaAny -> Integer
d_SizeOf_5172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_5176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_5176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_5180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4566 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_5180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4574
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_5184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_5184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_5188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_5188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_5192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_TxBodyOf_5192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_5196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_5196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4130
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_5200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166 ->
  AgdaAny -> AgdaAny
d_TxIdOf_5200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_5204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_5204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_5208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_TxWitnessesOf_5208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4062
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_5212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_5212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_5216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_5216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_5220 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_5220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_5242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5242 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5248 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_5250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5250 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_5254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5254 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_5256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5256 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5260 ~v0 = du_isMagmaIsomorphism_5260
du_isMagmaIsomorphism_5260 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5260 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5262 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5262 v2
du_isMagmaMonomorphism_5262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5266 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5268 v0
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
d_isRelIsomorphism_5270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5270 ~v0 ~v1 v2 = du_isRelIsomorphism_5270 v2
du_isRelIsomorphism_5270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5272 ~v0 ~v1 v2 = du_isRelMonomorphism_5272 v2
du_isRelMonomorphism_5272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5272 v0
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
d_surjective_5274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5276 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_5278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5278 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_5282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_5284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5284 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5288 ~v0 = du_isMagmaMonomorphism_5288
du_isMagmaMonomorphism_5288 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5288 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5292 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5294 ~v0 ~v1 v2 = du_isRelMonomorphism_5294 v2
du_isRelMonomorphism_5294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5296 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_5298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5298 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_5328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  ()
d_P1Script_5328 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_5330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5330 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_5346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_Emax_5346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_5348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_a_5348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_5350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_5352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_b_5352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_5354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMaxTermLength_5354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_5356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMinSize_5356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_5358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_coinsPerUTxOByte_5358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_5360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_collateralPercentage_5360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_5362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_5362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_500
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_5364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_5364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_5366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_drepActivity_5366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_498
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_5368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepDeposit_5368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_496
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_5370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_5370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_5372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionDeposit_5372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_5374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionLifetime_5374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_5376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_keyDeposit_5376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosCommitteeSize
d_leiosCommitteeSize_5378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosCommitteeSize_5378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosDiffusionPeriod_5380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_5382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosHeaderPeriod_5382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_leiosMaxEBExUnits_5384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBSize
d_leiosMaxEBSize_5386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBSize_5386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBTxsSize_5388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxRefScriptSizePerEB_5390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosVotingPeriod
d_leiosVotingPeriod_5394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosVotingPeriod_5394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_5396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxBlockExUnits_5396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_5398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxBlockSize_5398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_5400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxCollateralInputs_5400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_5402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxHeaderSize_5402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerBlock_5404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerTx_5406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_5408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxTxExUnits_5408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_5410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxTxSize_5410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_5412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxValSize_5412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minPoolCost
d_minPoolCost_5416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minPoolCost_5416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_5418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minUTxOValue_5418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_5420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_5422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_nopt_5422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_5424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_poolDeposit_5424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_5426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_5426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_5428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_prices_5428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_5430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  ()
d_UpdateT_5440 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_5442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyUpdate_5442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_5444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_5444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_5446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny -> ()
d_ppdWellFormed_5446 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_5448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1830 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_updateGroups_5448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1848
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__5452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__5452 ~v0 = du__'63''8599'__5452
du__'63''8599'__5452 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__5452 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1576
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__5454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d__'8746''737''7580''7504'__5454 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_696
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_5456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_5456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1828
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_5458 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_5462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_applyPParamsUpdate_5462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1630
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_5464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
d_modifiedUpdateGroups_5464 ~v0 = du_modifiedUpdateGroups_5464
du_modifiedUpdateGroups_5464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_238]
du_modifiedUpdateGroups_5464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1560
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_5466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesEconomicGroup_5466 ~v0 = du_modifiesEconomicGroup_5466
du_modifiesEconomicGroup_5466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
du_modifiesEconomicGroup_5466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1176
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_5468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesGovernanceGroup_5468 ~v0
  = du_modifiesGovernanceGroup_5468
du_modifiesGovernanceGroup_5468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
du_modifiesGovernanceGroup_5468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_5470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesNetworkGroup_5470 ~v0 = du_modifiesNetworkGroup_5470
du_modifiesNetworkGroup_5470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
du_modifiesNetworkGroup_5470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_1080
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_5472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesSecurityGroup_5472 ~v0 = du_modifiesSecurityGroup_5472
du_modifiesSecurityGroup_5472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
du_modifiesSecurityGroup_5472
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1464
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_5474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
d_modifiesTechnicalGroup_5474 ~v0 = du_modifiesTechnicalGroup_5474
du_modifiesTechnicalGroup_5474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Bool
du_modifiesTechnicalGroup_5474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1272
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_5476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  ()
d_paramsUpdateWellFormed_5476 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_5478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_5478 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_880
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_882
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_884
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_886
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_928
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_920
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_950
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_968
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_958
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_960
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_962
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_908
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_5480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_5480 ~v0 = du_'8801''45'update_5480
du_'8801''45'update_5480 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_5480 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1590
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_5484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_Emax_5484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_5486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_a_5486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_914 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_5488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_5490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_b_5490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_916 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_5492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_ccMaxTermLength_5492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_5494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_ccMinSize_5494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_5496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_coinsPerUTxOByte_5496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_5498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_collateralPercentage_5498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_5500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_5500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_5502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_drepActivity_5502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_5504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_drepDeposit_5504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_5506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_5506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_5508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_govActionDeposit_5508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_5510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_govActionLifetime_5510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_5512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_keyDeposit_5512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_5514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosCommitteeSize_5514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosDiffusionPeriod_5516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_900
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_5518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosHeaderPeriod_5518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_5520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_5522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxEBSize_5522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_902
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxEBTxsSize_5524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_904
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_5526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_908
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_5530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_leiosVotingPeriod_5530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_5532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_maxBlockExUnits_5532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_5534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxBlockSize_5534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_880
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_5536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxCollateralInputs_5536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_888
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_5538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxHeaderSize_5538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_5540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxRefScriptSizePerTx_5542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_5544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_maxTxExUnits_5544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_5546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxTxSize_5546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_5548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_maxValSize_5548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_5552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_minPoolCost_5552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_5554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_minUTxOValue_5554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_5556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_5558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_nopt_5558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_5560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe Integer
d_poolDeposit_5560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_5562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_5562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_5564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe AgdaAny
d_prices_5564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_5566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_5568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_5570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_5572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_788 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≤ᵉᵘ_
d__'8804''7497''7512'__5586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__5586 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.0ᵉᵘ
d_0'7497''7512'_5588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_0'7497''7512'_5588 ~v0 = du_0'7497''7512'_5588
du_0'7497''7512'_5588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_0'7497''7512'_5588
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_5590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_CostModel_5590 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_5592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_T_5592 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_5594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_THash_5594 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_5596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_5598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Datum_5598 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_5602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_5604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_5610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_5612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5612 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_5614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5614 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_5618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_ExUnits_5618 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_5620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_5620 ~v0 = du_HasAdd'45'ExUnits_5620
du_HasAdd'45'ExUnits_5620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_HasAdd'45'ExUnits_5620
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_5624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_LangDepView_5624 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_5626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Language_5626 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_5628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_PlutusScript_5628 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_5630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV1_5630 ~v0 = du_PlutusV1_5630
du_PlutusV1_5630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV1_5630
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_5632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV2_5632 ~v0 = du_PlutusV2_5632
du_PlutusV2_5632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV2_5632
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_5634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV3_5634 ~v0 = du_PlutusV3_5634
du_PlutusV3_5634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV3_5634
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV4
d_PlutusV4_5636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV4_5636 ~v0 = du_PlutusV4_5636
du_PlutusV4_5636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV4_5636
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_5638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Prices_5638 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_5640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Redeemer_5640 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_5642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_5644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_5646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_5648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_5650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5650 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_5652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5652 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_5654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_5656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_5658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny
d_language_5658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_5660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5660 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_5662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_5662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_5666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_5666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_5668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_5668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_5670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_5670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_310
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_5672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_5672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_312
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_5674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_5674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_5678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_5678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_5680 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_5680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≤ᵉᵘ_
d__'8804''7497''7512'__5684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__5684 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.0ᵉᵘ
d_0'7497''7512'_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_0'7497''7512'_5686 ~v0 v1 = du_0'7497''7512'_5686 v1
du_0'7497''7512'_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_0'7497''7512'_5686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_5688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_CostModel_5688 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_5690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_T_5690 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_5692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_THash_5692 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_5694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_5696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Datum_5696 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_5702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_5710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_5712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_5712 ~v0
  = du_DecEq'45'LanguageCostModels_5712
du_DecEq'45'LanguageCostModels_5712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_5712
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_5716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5716 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_5718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5718 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_ExUnits_5722 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_5724 ~v0 v1 = du_HasAdd'45'ExUnits_5724 v1
du_HasAdd'45'ExUnits_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_HasAdd'45'ExUnits_5724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_5730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_5730 ~v0 = du_Hashable'45'Script_5730
du_Hashable'45'Script_5730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_5730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_5732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_LangDepView_5732 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_5734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Language_5734 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_5736 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_5740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_P1Script_5740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_5742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_PlutusScript_5742 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_5744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV1_5744 ~v0 v1 = du_PlutusV1_5744 v1
du_PlutusV1_5744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV1_5744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_5746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV2_5746 ~v0 v1 = du_PlutusV2_5746 v1
du_PlutusV2_5746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV2_5746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_5748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV3_5748 ~v0 v1 = du_PlutusV3_5748 v1
du_PlutusV3_5748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV3_5748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV4
d_PlutusV4_5750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV4_5750 ~v0 v1 = du_PlutusV4_5750 v1
du_PlutusV4_5750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV4_5750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_5752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Prices_5752 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_5754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Redeemer_5754 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_5756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Script_5756 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_5758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_5760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_5762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_5764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_5764 ~v0
  = du_Show'45'LanguageCostModels_5764
du_Show'45'LanguageCostModels_5764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_5764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_5766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_5768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5768 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_5770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5770 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_5772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5772 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_5774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_5776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_5776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_5778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_5778 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_5780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_5780 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_5782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_5782 ~v0 = du_isP1Script'63'_5782
du_isP1Script'63'_5782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_5782 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_5784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_5784 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_5786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_5786 ~v0 = du_isP2Script'63'_5786
du_isP2Script'63'_5786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_5786 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_5788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny
d_language_5788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_5790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_5794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_5794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_5796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_5796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_5798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_5798 ~v0 = du_toP1Script_5798
du_toP1Script_5798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_5798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_5800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_5800 ~v0 = du_toP2Script_5800
du_toP2Script_5800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_5800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_5802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5802 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_5804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5804 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_5806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_5806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__5814 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__5814 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__5816 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__5816 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__5818 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__5818 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_5820 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_5820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_5822 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_5822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_5824 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_5828 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_5832 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_5836 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_5836 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_5838 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_5838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_5840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_5840 ~v0 = du_addValue_5840
du_addValue_5840 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_5840
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_5842 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_5842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_5844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_5844 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_5846 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_5846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_5848 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_5848 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_5850 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_5850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_5852 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_5852 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_5854 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_5854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_5856 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_5856 v0
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
d_size_5858 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_5858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_5860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_5860 ~v0 = du_sum'7515'_5860
du_sum'7515'_5860 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_5860
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_5862 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_5862 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_5866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5866 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5868 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5872 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_5874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5874 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_5878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5878 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_5880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5880 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5882 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5884 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5884 ~v0 = du_isMagmaIsomorphism_5884
du_isMagmaIsomorphism_5884 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5884 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5886 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5886 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5886 v2
du_isMagmaMonomorphism_5886 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5886 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5888 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5892 v0
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
d_isRelIsomorphism_5894 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5894 ~v0 ~v1 v2 = du_isRelIsomorphism_5894 v2
du_isRelIsomorphism_5894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5894 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5896 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5896 ~v0 ~v1 v2 = du_isRelMonomorphism_5896 v2
du_isRelMonomorphism_5896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5896 v0
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
d_surjective_5898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5898 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5900 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_5902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5902 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_5906 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5906 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_5908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5908 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5912 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5912 ~v0 = du_isMagmaMonomorphism_5912
du_isMagmaMonomorphism_5912 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5912 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5914 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5916 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5918 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5918 ~v0 ~v1 v2 = du_isRelMonomorphism_5918 v2
du_isRelMonomorphism_5918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5918 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5920 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_5922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5922 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_5926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_isValid_5926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txAuxData
d_txAuxData_5928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Maybe AgdaAny
d_txAuxData_5928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txBody
d_txBody_5930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_txBody_5930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txSize
d_txSize_5932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_txSize_5932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txWitnesses
d_txWitnesses_5934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_txWitnesses_5934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_5938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_collateralInputs_5938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_5940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe Integer
d_currentTreasury_5940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3978
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_5942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_mint_5942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3980
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_5944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_5944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_5946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [AgdaAny]
d_requiredSignerHashes_5946 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3996
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_5948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe AgdaAny
d_scriptIntegrityHash_5948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3982
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_5950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe AgdaAny
d_txADhash_5950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_5952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_5952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_5954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_txCerts_5954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3960
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_5956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_5956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3990
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_5958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Integer
d_txDonation_5958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_5960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txFee_5960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_5962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_txGovProposals_5962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_5964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_5964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGuards
d_txGuards_5966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_5966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_5968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txId_5968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3958
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_5970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_5970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_5972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  Maybe AgdaAny
d_txNetworkId_5972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3976
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_5974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_5974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3956
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_5976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_5976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3988
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_5978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txStartingBalanceIntervals_5978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_5980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  AgdaAny
d_txSubTransactions_5980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_5982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_5982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_5984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_5984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3964
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_5988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_5988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_4010
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_5990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [AgdaAny]
d_scriptsP1_5990 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_4016
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txData
d_txData_5992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  [AgdaAny]
d_txData_5992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_4012
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_5994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_5994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_5996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_5996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_4008
      (coe v0)
