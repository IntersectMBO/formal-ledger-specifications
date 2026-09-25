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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._._≈_
d__'8776'__16 :: Integer -> Integer -> ()
d__'8776'__16 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__18 :: Integer -> Integer -> ()
d__'8804''7511'__18 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._≥ᵉ_
d__'8805''7497'__20 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__20 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
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
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_34 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  Bool
d_'61''61''45'GovAction_34
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_36 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_38 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Bool
d_'61''61''45'GovProposal_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1548
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_40 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1484
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_42 :: ()
d_THash_42 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_44 :: ()
d_AccountBalanceIntervals_44 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AccountOf
d_AccountOf_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt
d_Acnt_48 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_52 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_52
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Addr
d_Addr_54 :: ()
d_Addr_54 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor
d_Anchor_58 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.AnchorOf
d_AnchorOf_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_62 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AnyLevelTx
d_AnyLevelTx_64 :: ()
d_AnyLevelTx_64 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_66 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_66 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_68 :: ()
d_AuxiliaryData_68 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceInterval
d_BalanceInterval_70 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_72 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_72 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr
d_BaseAddr_74 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_78 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_84 :: ()
d_CCHotKeys_84 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1678 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_86 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1686
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv
d_CertEnv_96 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState
d_CertState_100 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CertStateOf
d_CertStateOf_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_CertStateOf_104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ColdCredentialsOf
d_ColdCredentialsOf_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1698 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CollateralInputsOf
d_CollateralInputsOf_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4066
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CostModel
d_CostModel_112 :: ()
d_CostModel_112 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Credential
d_Credential_114 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.CredentialOf
d_CredentialOf_116 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DCert
d_DCert_120 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DCertsOf
d_DCertsOf_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_DCertsOf_122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DReps
d_DReps_130 :: ()
d_DReps_130 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DRepsOf
d_DRepsOf_132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState
d_DState_134 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DStateOf
d_DStateOf_138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514
d_DStateOf_138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T
d_T_140 :: ()
d_T_140 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_142 :: ()
d_THash_142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DataOf
d_DataOf_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326 ->
  AgdaAny -> [Integer]
d_DataOf_144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Dataʰ
d_Data'688'_146 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Datum
d_Datum_148 :: ()
d_Datum_148 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_150 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_152 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_936 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_152
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_970
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_154 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_154
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_156 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_158
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_160 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_162 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_164 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_164
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_168 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_170
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1094
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_172 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_174 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2188
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_182
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_186 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_188
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_190 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1376
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_198 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                       (coe v1) in
             coe
               (let v4
                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                             (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
                     (coe v2) (coe v3) (coe v4))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1546
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_208 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_212 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_214 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_216 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_216
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_220
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2184
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-StakePoolState
d_DecEq'45'StakePoolState_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolState_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolState_2186
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_232
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
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
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_236
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
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
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
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
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_244
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_246
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1374
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_248
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_250
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_254 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_254
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv
d_DelegEnv_256 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositOf
d_DepositOf_260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DepositsOf
d_DepositsOf_262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1658 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1666
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDeposits
d_DirectDeposits_264 :: ()
d_DirectDeposits_264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.DirectDepositsOf
d_DirectDepositsOf_266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_268 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244
d_HSAbstractFunctions_272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSAbstractFunctions_3942
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.govStructure
d_govStructure_274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_274
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.Epoch
d_Epoch_280 :: ()
d_Epoch_280 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.EpochOf
d_EpochOf_282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1918 ->
  AgdaAny -> Integer
d_EpochOf_282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.EvalNativeScript
d_EvalNativeScript_284 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_286 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_286
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ExUnits
d_ExUnits_288 :: ()
d_ExUnits_288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FPools
d_FPools_292 :: ()
d_FPools_292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.FeesOf?
d_FeesOf'63'_294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.FuturePoolsOf
d_FuturePoolsOf_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1738 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState
d_GState_304 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GStateOf
d_GStateOf_308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554
d_GStateOf_308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction
d_GovAction_310 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionData
d_GovActionData_314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_GovActionData_314 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionID
d_GovActionID_316 :: ()
d_GovActionID_316 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionOf
d_GovActionOf_318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState
d_GovActionState_320 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionType
d_GovActionType_324 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv
d_GovCertEnv_328 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams
d_GovParams_332 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal
d_GovProposal_336 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_GovProposalsOf_340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRole
d_GovRole_342 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  ()
d_GovRoleCredential_344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote
d_GovVote_346 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter
d_GovVoter_350 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes
d_GovVotes_356 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GuardsOf
d_GuardsOf_364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLeiosCryptoStructure
d_HSLeiosCryptoStructure_366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_HSLeiosCryptoStructure_366
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript
d_HSNativeScript_368 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_HSP1ScriptStructure_372
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_HSP2ScriptStructure_374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_376 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_HSScriptStructure_380
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount
d_HasAccount_382 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor
d_HasAnchor_386 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
d_HasAnchor'45'GovProposal_390
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_392 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_396 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals
d_HasBalanceIntervals_398 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506
d_HasBalanceIntervals'45'Tx_402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4598
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506
d_HasBalanceIntervals'45'TxBody_404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_406 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1678
d_HasCCHotKeys'45'CertState_410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_1994
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1678
d_HasCCHotKeys'45'GState_412
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1980
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_414 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_418 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_418
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_420
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_2008
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_2016
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_424
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_2010
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_2018
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_2014
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_2022
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1474
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_436 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_2012
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_442 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_2020
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCast-StakePoolState
d_HasCast'45'StakePoolState_444 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakePoolState_444
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'StakePoolState_2006
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState
d_HasCertState_446 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_450 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_450
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2180
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_452 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_452
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4650
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials
d_HasColdCredentials_454 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1698
d_HasColdCredentials'45'CertEnv_458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_1960
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1698
d_HasColdCredentials'45'GovCertEnv_460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1958
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs
d_HasCollateralInputs_462 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056
d_HasCollateralInputs'45'TopLevelTx_466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4574
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential
d_HasCredential_468 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_472
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury
d_HasCurrentTreasury_474 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466
d_HasCurrentTreasury'45'Tx_478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4674
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466
d_HasCurrentTreasury'45'TxBody_480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4672
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts
d_HasDCerts_482 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286
d_HasDCerts'45'Tx_486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4586
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286
d_HasDCerts'45'TxBody_488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4584
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps
d_HasDReps_490 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274
d_HasDReps'45'CertState_494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1992
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274
d_HasDReps'45'GState_496
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1978
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState
d_HasDState_498 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1838
d_HasDState'45'CertState_502
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1984
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData
d_HasData_504 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-Tx
d_HasData'45'Tx_508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
d_HasData'45'Tx_508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
d_HasData'45'TxWitnesses_510
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit
d_HasDeposit_512 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
d_HasDeposit'45'GovProposal_516
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits
d_HasDeposits_518 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-DState
d_HasDeposits'45'DState_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1658
d_HasDeposits'45'DState_522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1968
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-GState
d_HasDeposits'45'GState_524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1658
d_HasDeposits'45'GState_524
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_1982
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits-PState
d_HasDeposits'45'PState_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1658
d_HasDeposits'45'PState_526
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1974
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits
d_HasDirectDeposits_528 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486
d_HasDirectDeposits'45'Tx_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4594
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486
d_HasDirectDeposits'45'TxBody_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4592
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'TxBody_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch
d_HasEpoch_540 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1918
d_HasEpoch'45'CertEnv_544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_2004
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1918
d_HasEpoch'45'GovCertEnv_546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_2002
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?
d_HasFees'63'_548 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266
d_HasFees'63''45'Tx_552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4640
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266
d_HasFees'63''45'TxBody_554
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4634
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools
d_HasFuturePools_556 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1738
d_HasFuturePools'45'PState_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_1972
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState
d_HasGState_562 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1878
d_HasGState'45'CertState_566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1988
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction
d_HasGovAction_568 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovActionState_572
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovProposal_574
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_576 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovAction_580
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovActionState_582
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovProposal_584
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_586 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_590 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
d_HasGovVoter'45'GovVote_594
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_596 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
d_HasGovVotes'45'GovActionState_600
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards
d_HasGuards_602 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-Tx
d_HasGuards'45'Tx_606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
d_HasGuards'45'Tx_606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
d_HasGuards'45'TxBody_608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag
d_HasIsValidFlag_610 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546
d_HasIsValidFlag'45'Tx_614
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4568
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals
d_HasListOfGovProposals_616 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346
d_HasListOfGovProposals'45'Tx_620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346
d_HasListOfGovProposals'45'TxBody_622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes
d_HasListOfGovVotes_624 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366
d_HasListOfGovVotes'45'Tx_628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366
d_HasListOfGovVotes'45'TxBody_630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_632 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue
d_HasMintedValue_640 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246
d_HasMintedValue'45'Tx_644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246
d_HasMintedValue'45'TxBody_646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_648 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_652
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_654
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_656
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams
d_HasPParams_658 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'CertEnv_662
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1954
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'GovCertEnv_664
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1956
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState
d_HasPState_666 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1858
d_HasPState'45'CertState_670
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1986
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy
d_HasPolicy_672 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_676
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools
d_HasPools_678 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1718
d_HasPools'45'CertState_682
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1996
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1718
d_HasPools'45'PState_684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1970
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers
d_HasRedeemers_686 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034
d_HasRedeemers'45'Tx_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4572
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034
d_HasRedeemers'45'TxWitnesses_692
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4570
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs
d_HasReferenceInputs_694 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226
d_HasReferenceInputs'45'Tx_698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226
d_HasReferenceInputs'45'TxBody_700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_702 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446
d_HasRequiredSingerHashes'45'Tx_706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446
d_HasRequiredSingerHashes'45'TxBody_708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_710 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_710
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring
d_HasRetiring_712 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1758
d_HasRetiring'45'PState_716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1976
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_718 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_722 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_722
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_724 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_724
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards
d_HasRewards_726 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
d_HasRewards'45'CertState_730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1990
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778
d_HasRewards'45'DState_732
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1966
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts
d_HasScripts_734 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-Tx
d_HasScripts'45'Tx_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406
d_HasScripts'45'Tx_738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406
d_HasScripts'45'TxWitnesses_740
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize
d_HasSize_742 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize-Tx
d_HasSize'45'Tx_746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146
d_HasSize'45'Tx_746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4564
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs
d_HasSpendInputs_748 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
d_HasSpendInputs'45'Tx_752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
d_HasSpendInputs'45'TxBody_754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake
d_HasStake_756 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_760 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1818
d_HasStakeDelegs'45'CertState_764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_2000
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1818
d_HasStakeDelegs'45'DState_766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1964
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_768 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526
d_HasStartingBalanceIntervals'45'Tx_772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526
d_HasStartingBalanceIntervals'45'TxBody_774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4600
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions
d_HasSubTransactions_776 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104
d_HasSubTransactions'45'TopLevelTx_780
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4578
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards
d_HasTopLevelGuards_782 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
d_HasTopLevelGuards'45'Tx_786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4582
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
d_HasTopLevelGuards'45'TxBody_788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4580
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_790 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_790
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody
d_HasTxBody_792 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992
d_HasTxBody'45'Tx_796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4562
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees
d_HasTxFees_798 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080
d_HasTxFees'45'TopLevelTx_802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4576
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId
d_HasTxId_804 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
d_HasTxId'45'Tx_808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
d_HasTxId'45'TxBody_810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts
d_HasTxOuts_812 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426
d_HasTxOuts'45'Tx_816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426
d_HasTxOuts'45'TxBody_818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses
d_HasTxWitnesses_820 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014
d_HasTxWitnesses'45'Tx_824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4566
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO
d_HasUTxO_826 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval
d_HasValidInterval_830 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186
d_HasValidInterval'45'Tx_834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186
d_HasValidInterval'45'TxBody_836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote
d_HasVote_838 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
d_HasVote'45'GovVote_842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1344
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_844 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158
d_HasVoteDelegs'45'CertState_848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_1998
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158
d_HasVoteDelegs'45'DState_850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1962
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes
d_HasVotes_852 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_856 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4590
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4588
-- Ledger.Dijkstra.Foreign.HSStructures._.HashProtected
d_HashProtected_864 :: () -> ()
d_HashProtected_864 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_866 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_868 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_868
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_870 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_870
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_872 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_872
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_874 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_874
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2730
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.HsGovParams
d_HsGovParams_876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_HsGovParams_876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Dijkstra.Foreign.HSStructures._.InBalanceInterval
d_InBalanceInterval_878 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique
d_IsBLSUnique_882 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsBLSUnique_882 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBLSUnique?
d_IsBLSUnique'63'_884 ::
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBLSUnique'63'_884
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsBLSUnique'63'_2232
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_886 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_888 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_888
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert
d_IsConwayCert_890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 -> ()
d_IsConwayCert_890 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsConwayCert?
d_IsConwayCert'63'_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1630
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_896 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_898 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_898
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_900 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_904 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_908 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.IsPoolRegistered
d_IsPoolRegistered_912 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_912 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsVRFUnique
d_IsVRFUnique_914 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsVRFUnique_914 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP
d_IsValidBLSPoP_916 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsValidBLSPoP_916 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidBLSPoP?
d_IsValidBLSPoP'63'_918 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsValidBLSPoP'63'_918
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsValidBLSPoP'63'_2238
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsValidFlagOf
d_IsValidFlagOf_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546 ->
  AgdaAny -> Bool
d_IsValidFlagOf_920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ix
d_Ix_922 :: ()
d_Ix_922 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.THash
d_THash_924 :: ()
d_THash_924 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.KeyPair
d_KeyPair_928 :: ()
d_KeyPair_928 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LangDepView
d_LangDepView_930 :: ()
d_LangDepView_930 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Language
d_Language_932 :: ()
d_Language_932 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_934 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_ListOfGovProposalsOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_ListOfGovVotesOf_940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_942 :: Integer
d_MaxLovelaceSupply'7580'_942
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_944 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_944 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_946 :: ()
d_MemoryEstimate_946 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.MintedValueOf
d_MintedValueOf_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246 ->
  AgdaAny -> Integer
d_MintedValueOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NativeScript
d_NativeScript_952 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.NeedsHash
d_NeedsHash_954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_NeedsHash_954 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Network
d_Network_956 :: ()
d_Network_956 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkId
d_NetworkId_960 :: Integer
d_NetworkId_960
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_962 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_962 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  ()
d_NoOverlappingSpendInputs_968 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_970 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_970
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_972 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_972
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_974 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_974
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.P1Script
d_P1Script_976 :: ()
d_P1Script_976 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_978 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusScript
d_PlutusScript_982 :: ()
d_PlutusScript_982 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamGroup
d_PParamGroup_990 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams
d_PParams_992 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_996 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsOf
d_PParamsOf_1000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UpdateT
d_UpdateT_1002 :: ()
d_UpdateT_1002 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PState
d_PState_1004 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PStateOf
d_PStateOf_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534
d_PStateOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1866
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusLanguage
d_PlutusLanguage_1010 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_1012 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV1
d_PlutusV1_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1016
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV2
d_PlutusV2_1018 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1018
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV3
d_PlutusV3_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1020
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusV4
d_PlutusV4_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1022
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Policy
d_Policy_1024 :: ()
d_Policy_1024 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PolicyOf
d_PolicyOf_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolDepositsRegistered
d_PoolDepositsRegistered_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  ()
d_PoolDepositsRegistered_1028 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv
d_PoolEnv_1030 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_1034 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Pools
d_Pools_1038 :: ()
d_Pools_1038 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolsOf
d_PoolsOf_1040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1042 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1042
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Prices
d_Prices_1044 :: ()
d_Prices_1044 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1046 :: ()
d_ProposedPPUpdates_1046 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Quorum
d_Quorum_1048 :: Integer
d_Quorum_1048
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1050 :: Integer
d_RandomnessStabilisationWindow_1050
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1052 :: Integer
d_RandomnessStabilisationWindow'7580'_1052
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Redeemer
d_Redeemer_1054 :: ()
d_Redeemer_1054 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemerPtr
d_RedeemerPtr_1056 :: ()
d_RedeemerPtr_1056 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RedeemersOf
d_RedeemersOf_1058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Retiring
d_Retiring_1078 :: ()
d_Retiring_1078 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RetiringOf
d_RetiringOf_1080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress
d_RewardAddress_1082 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_1086 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1086 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Rewards
d_Rewards_1088 :: ()
d_Rewards_1088 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardsOf
d_RewardsOf_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SKey
d_SKey_1094 :: ()
d_SKey_1094 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Script
d_Script_1098 :: ()
d_Script_1098 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_1100 :: ()
d_ScriptAddr_1100 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1102 :: ()
d_ScriptBaseAddr_1102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1104 :: ()
d_ScriptBootstrapAddr_1104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptHash
d_ScriptHash_1106 :: ()
d_ScriptHash_1106 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_1110 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptsOf
d_ScriptsOf_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Ser
d_Ser_1118 :: ()
d_Ser_1118 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_1120 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1120
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_1122 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1122 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1124 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1124 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1126 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_1128 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1128
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_1130 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1130
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_1132 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1132
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Language
d_Show'45'Language_1134 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1136 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1136
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Network
d_Show'45'Network_1138 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1138
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_1140 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1142 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1142
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_1144 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1146 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1146
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1148 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1148
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1150 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1150
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1152 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-THash
d_Show'45'THash_1154 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_1156 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1476
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Sig
d_Sig_1158 :: ()
d_Sig_1158 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SizeOf
d_SizeOf_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146 ->
  AgdaAny -> Integer
d_SizeOf_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Slot
d_Slot_1162 :: ()
d_Slot_1162 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1164 :: Integer
d_SlotsPerEpoch'7580'_1164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Slotʳ
d_Slot'691'_1166 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.SpendInputsOf
d_SpendInputsOf_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_1170 :: Integer
d_StabilityWindow_1170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1172 :: Integer
d_StabilityWindow'7580'_1172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Stake
d_Stake_1174 :: ()
d_Stake_1174 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_1176 :: ()
d_StakeDelegs_1176 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_1178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakeOf
d_StakeOf_1180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1806
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_1182 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState
d_StakePoolState_1186 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.SubLevelTx
d_SubLevelTx_1192 :: ()
d_SubLevelTx_1192 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.SubTransactionsOf
d_SubTransactionsOf_1194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1196 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1196
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1198 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_1200 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_1202 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1202
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_1206 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TopLevelTx
d_TopLevelTx_1212 :: ()
d_TopLevelTx_1212 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx
d_Tx_1218 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody
d_TxBody_1222 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_1226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_TxBodyOf_1226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxFeesOf
d_TxFeesOf_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxId
d_TxId_1230 :: ()
d_TxId_1230 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIdOf
d_TxIdOf_1232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126 ->
  AgdaAny -> Integer
d_TxIdOf_1232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxIn
d_TxIn_1234 :: ()
d_TxIn_1234 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOut
d_TxOut_1236 :: ()
d_TxOut_1236 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TxOutsOf
d_TxOutsOf_1238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_1240 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnessesOf
d_TxWitnessesOf_1244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_TxWitnessesOf_1244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxO
d_UTxO_1246 :: ()
d_UTxO_1246 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.UTxOOf
d_UTxOOf_1248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Update
d_Update_1250 :: ()
d_Update_1250 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VDeleg
d_VDeleg_1262 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.VKey
d_VKey_1264 :: ()
d_VKey_1264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_1266 :: ()
d_VKeyAddr_1266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1268 :: ()
d_VKeyBaseAddr_1268 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1270 :: ()
d_VKeyBootstrapAddr_1270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VRF
d_VRF_1274 :: ()
d_VRF_1274 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ValidIntervalOf
d_ValidIntervalOf_1276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Value
d_Value_1278 :: ()
d_Value_1278 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1280 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1280
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_1282 :: ()
d_VoteDelegs_1282 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VoteOf
d_VoteOf_1286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_1286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.VotesOf
d_VotesOf_1288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1938 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_VotesOf_1288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Withdrawals
d_Withdrawals_1290 :: ()
d_Withdrawals_1290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_1294 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1294
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1654
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_1296 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1296 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_1298 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1298
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.HSStructures._.addEpoch
d_addEpoch_1300 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1300
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addSlot
d_addSlot_1302 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1302
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.addValue
d_addValue_1304 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1304
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.allDCerts
d_allDCerts_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_allDCerts_1306
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4808
-- Ledger.Dijkstra.Foreign.HSStructures._.allMintedCoin
d_allMintedCoin_1308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Integer
d_allMintedCoin_1308
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4792
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceInputs
d_allReferenceInputs_1310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4702
-- Ledger.Dijkstra.Foreign.HSStructures._.allReferenceScripts
d_allReferenceScripts_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1312
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputs
d_allSpendInputs_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4690
-- Ledger.Dijkstra.Foreign.HSStructures._.allSpendInputsList
d_allSpendInputsList_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1316
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4698
-- Ledger.Dijkstra.Foreign.HSStructures._.allWitnessScripts
d_allWitnessScripts_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
-- Ledger.Dijkstra.Foreign.HSStructures._.applyUpdate
d_applyUpdate_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1320
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin
d_coin_1326 :: Integer -> Integer
d_coin_1326
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1328 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1328 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromDeposits
d_coinFromDeposits_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  Integer
d_coinFromDeposits_1330
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromDeposits_2172
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinFromRewards
d_coinFromRewards_1332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  Integer
d_coinFromRewards_1332
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromRewards_2170
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1334 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1334
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.cwitness
d_cwitness_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1340
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1470
-- Ledger.Dijkstra.Foreign.HSStructures._.dataOfTx
d_dataOfTx_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [Integer]
d_dataOfTx_1342 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4774
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_1350 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1350
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epoch
d_epoch_1352 :: Integer -> Integer
d_epoch_1352
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.epochStructure
d_epochStructure_1354 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1354
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.HSStructures._.firstSlot
d_firstSlot_1372 :: Integer -> Integer
d_firstSlot_1372
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1374 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.gaData
d_gaData_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.gaType
d_gaType_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.getAllScripts
d_getAllScripts_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1380
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4764
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [Integer]
d_getTxData_1384 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4784
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.getTxScripts
d_getTxScripts_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1386
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4758
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.globalConstants
d_globalConstants_1388 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1388
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.HSStructures._.govParams
d_govParams_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_1390
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HsGovParams_644
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1124
-- Ledger.Dijkstra.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1394 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1394
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.inject
d_inject_1396 :: Integer -> Integer
d_inject_1396
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1398 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1398
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1120
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1402 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1402 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1404
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1406 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1408 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1408 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1410 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1410 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script
d_isP1Script_1412 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1412 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1414 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1414
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script
d_isP2Script_1416 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1416 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1418 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1418
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Foreign.HSStructures._.isScript
d_isScript_1420 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1422 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1422 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1424 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1424
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1426 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1426 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned
d_isSigned_1428 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1428 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1430 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1430 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKey
d_isVKey_1432 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1434 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1434 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.khs
d_khs_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1436
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.language
d_language_1438 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1438
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.leiosCryptoStructure
d_leiosCryptoStructure_1442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1442
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSLeiosCryptoStructure_690
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1444
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4800
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3 v4)
-- Ledger.Dijkstra.Foreign.HSStructures._.mkStakePoolState
d_mkStakePoolState_1450 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380
d_mkStakePoolState_1450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_mkStakePoolState_1412
-- Ledger.Dijkstra.Foreign.HSStructures._.monoid
d_monoid_1452 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1452
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.netId
d_netId_1454 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1454
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.HSStructures._.newCertDeposits
d_newCertDeposits_1456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454] ->
  Integer
d_newCertDeposits_1456
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2122
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.p1s
d_p1s_1458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_1458
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1460 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1462 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.payCred
d_payCred_1464 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1464
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.HSStructures._.pkk
d_pkk_1466 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1466
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.policies
d_policies_1468 :: Integer -> [Integer]
d_policies_1468
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.poolOwners
d_poolOwners_1470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 ->
  [Integer]
d_poolOwners_1470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1486
-- Ledger.Dijkstra.Foreign.HSStructures._.positivePParams
d_positivePParams_1472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1472
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Foreign.HSStructures._.ppUpd
d_ppUpd_1474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1474
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1476
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_ppdWellFormed_1478 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1480 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1480
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.proposedCC
d_proposedCC_1482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1132
-- Ledger.Dijkstra.Foreign.HSStructures._.ps
d_ps_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_1484
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1486 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1486
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceData
d_referenceData_1488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1488
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4780
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.referenceScripts
d_referenceScripts_1490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1490
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4732
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.referencedTxOuts
d_referencedTxOuts_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1492
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4720
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.refundCertDeposits
d_refundCertDeposits_1494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454] ->
  Integer
d_refundCertDeposits_1494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2152
-- Ledger.Dijkstra.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  Integer
d_rewardsBalance_1502
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_1504
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfTx
d_scriptsOfTx_1506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1506 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4728
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1508
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4726
-- Ledger.Dijkstra.Foreign.HSStructures._.sign
d_sign_1510 :: Integer -> Integer -> Integer
d_sign_1510
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.size
d_size_1512 :: Integer -> Integer
d_size_1512
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendData
d_spendData_1514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1514
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4778
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendScripts
d_spendScripts_1516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1516
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4730
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.spendTxOuts
d_spendTxOuts_1518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1518
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4714
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
              (coe v0))
           v2 v3)
-- Ledger.Dijkstra.Foreign.HSStructures._.stakeCred
d_stakeCred_1520 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1520
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1522 :: Integer -> Integer
d_suc'7497'_1522
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1524 :: [Integer] -> Integer
d_sum'7515'_1524
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.toP1Script
d_toP1Script_1526 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1526
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.HSStructures._.toP2Script
d_toP2Script_1528 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1532 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1532
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4776
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToDatum
d_txOutToDatum_1534 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1534
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4680
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToScript
d_txOutToScript_1536 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1536
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4676
-- Ledger.Dijkstra.Foreign.HSStructures._.txOutToValue
d_txOutToValue_1538 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1538
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4684
-- Ledger.Dijkstra.Foreign.HSStructures._.txidBytes
d_txidBytes_1540 :: Integer -> Integer
d_txidBytes_1540 v0 = coe v0
-- Ledger.Dijkstra.Foreign.HSStructures._.updateGroups
d_updateGroups_1542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1542
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.validP1Script
d_validP1Script_1552 ::
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1552 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1554 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1554 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.valuesOfUTxO
d_valuesOfUTxO_1556 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4688
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessData
d_witnessData_1558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [Integer]
d_witnessData_1558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4782
-- Ledger.Dijkstra.Foreign.HSStructures._.witnessScripts
d_witnessScripts_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4748
-- Ledger.Dijkstra.Foreign.HSStructures._.ε
d_ε_1562 :: Integer
d_ε_1562
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                     (coe v1))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1564 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1564 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1566 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1566
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1568 :: Integer -> Integer
d_ℕtoEpoch_1568
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1570 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1570
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1572 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1572
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.reserves
d_reserves_1624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Acnt.treasury
d_treasury_1626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.hash
d_hash_1630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998 ->
  Integer
d_hash_1630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Anchor.url
d_url_1632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.net
d_net_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.pay
d_pay_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BaseAddr.stake
d_stake_1650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.net
d_net_1656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.coldCredentials
d_coldCredentials_1662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1498 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1510
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1498 ->
  Integer
d_epoch_1664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1506
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertEnv.pp
d_pp_1666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_1666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1508 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.dState
d_dState_1670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514
d_dState_1670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1578
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.gState
d_gState_1672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554
d_gState_1672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1582
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.CertState.pState
d_pState_1674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534
d_pState_1674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1580
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1684 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1684
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
d_DecEq'45'ScriptHash_1686 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1686
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1688 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1688
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
d_DecEq'45'Sig_1690 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1690
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
d_DecEq'45'THash_1692 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1692
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
d_DecEq'45'VRF_1694 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1694
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.THash
d_THash_1696 :: ()
d_THash_1696 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1698 :: ()
d_KeyPair_1698 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.SKey
d_SKey_1700 :: ()
d_SKey_1700 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1702 :: ()
d_ScriptHash_1702 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Ser
d_Ser_1704 :: ()
d_Ser_1704 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1706 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1706
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1708 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1708
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
d_Sig_1710 :: ()
d_Sig_1710 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1712 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1712
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
d_VKey_1714 :: ()
d_VKey_1714 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.VRF
d_VRF_1716 :: ()
d_VRF_1716 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1718 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1718 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1720 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1720 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1722 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1722 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.khs
d_khs_1724 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1724
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.pkk
d_pkk_1726 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1726
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d___246
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.Crypto.sign
d_sign_1728 :: Integer -> Integer -> Integer
d_sign_1728
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
d_deposits_1748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.rewards
d_rewards_1750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1528
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1526
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1524
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1586 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1598
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pools
d_pools_1760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1596
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1586 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_1762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1594
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1564
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.deposits
d_deposits_1806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1566
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GState.dreps
d_dreps_1808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1562
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaData
d_gaData_1812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_1812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovAction.gaType
d_gaType_1814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_1814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.action
d_action_1818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_1818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.deposit
d_deposit_1820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  Integer
d_deposit_1820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  Integer
d_expiresIn_1822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1110
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  AgdaAny
d_prevAction_1824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovActionState.votes
d_votes_1828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_votes_1828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.coldCredentials
d_coldCredentials_1848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1614 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_1848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1626
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.epoch
d_epoch_1850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1614 ->
  Integer
d_epoch_1850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovCertEnv.pp
d_pp_1852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1614 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_1852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1624 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_1858 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_1866 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.action
d_action_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_1872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.anchor
d_anchor_1874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_1874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1088
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.deposit
d_deposit_1876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Integer
d_deposit_1876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1084
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.policy
d_policy_1878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Maybe Integer
d_policy_1878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.prevAction
d_prevAction_1880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  AgdaAny
d_prevAction_1880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovProposal.returnAddr
d_returnAddr_1882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.anchor
d_anchor_1894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_1894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.gid
d_gid_1896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1020
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.vote
d_vote_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_vote_1898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVote.voter
d_voter_1900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_voter_1900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvCredential
d_gvCredential_1904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  AgdaAny
d_gvCredential_1904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVoter.gvRole
d_gvRole_1906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936
d_gvRole_1906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvCC
d_gvCC_1910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1038
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvDRep
d_gvDRep_1912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1040
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovVotes.gvSPO
d_gvSPO_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_1918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  Bool
d_'61''61''45'GovAction_1918
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1514
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_1920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1920
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1496
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_1922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Bool
d_'61''61''45'GovProposal_1922
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1548
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_1924 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1484
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Anchor
d_Anchor_1926 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.AnchorOf
d_AnchorOf_1930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_1930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DReps
d_DReps_1938 :: ()
d_DReps_1938 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DRepsOf
d_DRepsOf_1940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_1942 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1942
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1478
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1944 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1946 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1946
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1948 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1948
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1376
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1950
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1546
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1952 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1952
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1374
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1954 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1954
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.DepositOf
d_DepositOf_1956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_1956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovAction
d_GovAction_1958 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionData
d_GovActionData_1962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_GovActionData_1962 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionID
d_GovActionID_1964 :: ()
d_GovActionID_1964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionOf
d_GovActionOf_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionState
d_GovActionState_1968 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionType
d_GovActionType_1972 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovProposal
d_GovProposal_1976 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRole
d_GovRole_1980 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  ()
d_GovRoleCredential_1982 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVote
d_GovVote_1984 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoter
d_GovVoter_1988 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotes
d_GovVotes_1994 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2000 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
d_HasAnchor'45'GovProposal_2004
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2006 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2006
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2008 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2008
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1474
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2010 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2012 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps
d_HasDReps_2014 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2018 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
d_HasDeposit'45'GovProposal_2022
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2024 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovActionState_2028
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovProposal_2030
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2032 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovAction_2036
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovActionState_2038
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovProposal_2040
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2042 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
d_HasGovVoter'45'GovVote_2046
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2048 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
d_HasGovVotes'45'GovActionState_2052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2054 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_2058
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2060 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2062 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2062
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote
d_HasVote_2064 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
d_HasVote'45'GovVote_2068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1344
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2070 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HashProtected
d_HashProtected_2074 :: () -> ()
d_HashProtected_2074 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_NeedsHash_2078 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Policy
d_Policy_2084 :: ()
d_Policy_2084 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2090 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2090
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2092 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2092
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1476
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VDeleg
d_VDeleg_2100 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.Vote
d_Vote_2102 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2104 :: ()
d_VoteDelegs_2104 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.VoteOf
d_VoteOf_2108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2112 ::
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2112
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1654
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
                 (coe v1))
              v3 v4 v5))
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2114 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2114 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaData
d_gaData_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_2116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.gaType
d_gaType_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_2118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1124
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2122
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1120
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.proposedCC
d_proposedCC_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1132
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_2142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_2154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_2158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_2166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_2174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nativeScript
d_nativeScript_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326
d_nativeScript_2198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_2202 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_2202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_2206 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_2206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_2208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_2210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAccount.AccountOf
d_AccountOf_2214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1678 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1686
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_2234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_CertStateOf_2234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1698 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_2238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1706
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4066
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_2246 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_2254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_DCertsOf_2254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_2258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514
d_DStateOf_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasData.DataOf
d_DataOf_2262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326 ->
  AgdaAny -> [Integer]
d_DataOf_2262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_2266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1658 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1666
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasEpoch.EpochOf
d_EpochOf_2274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1918 ->
  AgdaAny -> Integer
d_EpochOf_2274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_2282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1738 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_2282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1746
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_2286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1878 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1554
d_GStateOf_2286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1886
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_GovProposalsOf_2290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasGuards.GuardsOf
d_GuardsOf_2294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_ListOfGovProposalsOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_ListOfGovVotesOf_2306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2310 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246 ->
  AgdaAny -> Integer
d_MintedValueOf_2314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2318 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_2322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_2326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534
d_PStateOf_2326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1866
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_2330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1718 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_2346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1758 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1766
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_2354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1778 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSize.SizeOf
d_SizeOf_2362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146 ->
  AgdaAny -> Integer
d_SizeOf_2362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_2370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1806
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1818 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_2378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_2378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_TxBodyOf_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_2398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126 ->
  AgdaAny -> Integer
d_TxIdOf_2398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_TxWitnessesOf_2406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_2410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasVotes.VotesOf
d_VotesOf_2418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1938 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_VotesOf_2418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2422 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2450 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2452 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2456 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2458 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2462 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2462 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2464 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2464 ~v0 v1 = du_isMagmaMonomorphism_2464 v1
du_isMagmaMonomorphism_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2470 v0
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
d_isRelIsomorphism_2472 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2472 ~v0 v1 = du_isRelIsomorphism_2472 v1
du_isRelIsomorphism_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2474 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2474 ~v0 v1 = du_isRelMonomorphism_2474 v1
du_isRelMonomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2474 v0
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
d_surjective_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2478 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2480 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2484 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2486 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2490 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2490 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2492 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2496 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2496 ~v0 v1 = du_isRelMonomorphism_2496 v1
du_isRelMonomorphism_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2498 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2500 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_2530 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2532 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.Emax
d_Emax_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a
d_a_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.a0
d_a0_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.b
d_b_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdls
d_costmdls_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2564
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minPoolCost
d_minPoolCost_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.nopt
d_nopt_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.prices
d_prices_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.pv
d_pv_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_2642 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_2648 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2654 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2654 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__2656
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_686
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                             (coe v3))))))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2658 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2658
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2660 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2664
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v1))))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2666
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_2668
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_2670
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_2672
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_2674
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_2676
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_2678 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2680 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2682 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_Emax_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepActivity_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.deposits
d_deposits_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1550
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.fPools
d_fPools_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1546
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.pools
d_pools_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1544
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PState.retiring
d_retiring_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1548
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2798 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_2800 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T
d_T_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_2802 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_2804 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_2808 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2822 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2824 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_2828 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_2832 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_2834 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_2836 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_2838
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_2840
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_2842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.PlutusV4
d_PlutusV4_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_2844
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_2846 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_2848 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2858 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2860 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2862 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.language
d_language_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_2866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2868 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.epoch
d_epoch_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1602 ->
  Integer
d_epoch_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1608
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolEnv.pp
d_pp_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1602 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1610 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.net
d_net_2892 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.RewardAddress.stake
d_stake_2894 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2898 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_2900 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T
d_T_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_2902 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_2904 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_2908 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2924
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2928 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2930 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_2934 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2940
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_2942 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_2944 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2946 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_2950 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_2952 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.PlutusV4
d_PlutusV4_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_2962 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_2964 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_2966 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2974
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2978 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2980 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2982 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2988 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2990 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2992 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2994 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2996 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.language
d_language_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.ps
d_ps_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3012 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3014 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.bls
d_bls_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1376
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.cost
d_cost_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  Integer
d_cost_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1366
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.margin
d_margin_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1368
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.owners
d_owners_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  [Integer]
d_owners_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1364
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  Integer
d_pledge_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1370
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1372
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolParams.vrf
d_vrf_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1348 ->
  Integer
d_vrf_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.bls
d_bls_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.cost
d_cost_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  Integer
d_cost_3042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1398
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.margin
d_margin_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1400
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.owners
d_owners_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  [Integer]
d_owners_3046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1396
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.pledge
d_pledge_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  Integer
d_pledge_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.rewardAccount
d_rewardAccount_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.StakePoolState.vrf
d_vrf_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1380 ->
  Integer
d_vrf_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3056 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3058 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3060 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3066 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3070 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3074 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3078 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3082
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3086 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3090 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3094 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3098 v0
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
d_size_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3104 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3108 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3114 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3116 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3120 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3122 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3124 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3126 ~v0 = du_isMagmaIsomorphism_3126
du_isMagmaIsomorphism_3126 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3126 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3128 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3128 v2
du_isMagmaMonomorphism_3128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3128 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3130 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3134 v0
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
d_isRelIsomorphism_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3136 ~v0 ~v1 v2 = du_isRelIsomorphism_3136 v2
du_isRelIsomorphism_3136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3138 ~v0 ~v1 v2 = du_isRelMonomorphism_3138 v2
du_isRelMonomorphism_3138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3138 v0
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
d_surjective_3140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3144 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3148 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3154 ~v0 = du_isMagmaMonomorphism_3154
du_isMagmaMonomorphism_3154 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3154 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3160 ~v0 ~v1 v2 = du_isRelMonomorphism_3160 v2
du_isRelMonomorphism_3160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3162 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3164 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.isValid
d_isValid_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  AgdaAny
d_isValid_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3856
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txAuxData
d_txAuxData_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Maybe Integer
d_txAuxData_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txBody
d_txBody_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txSize
d_txSize_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Integer
d_txSize_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Tx.txWitnesses
d_txWitnesses_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_collateralInputs_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe Integer
d_currentTreasury_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.mint
d_mint_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Integer
d_mint_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.referenceInputs
d_referenceInputs_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [Integer]
d_requiredSignerHashes_3188 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3956
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe Integer
d_scriptIntegrityHash_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe Integer
d_txADhash_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_txCerts_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Integer
d_txDonation_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txFee
d_txFee_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txFee_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_txGovProposals_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_txGovVotes_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txGuards
d_txGuards_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txId
d_txId_3210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Integer
d_txId_3210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txIns
d_txIns_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe Integer
d_txNetworkId_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txStartingBalanceIntervals_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txSubTransactions
d_txSubTransactions_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txSubTransactions_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3232
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3976
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txData
d_txData_3234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [Integer]
d_txData_3234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_3252 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_3252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_3254 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_3254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_3258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_3258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.DecEq-TxLevel
d_DecEq'45'TxLevel_3260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxLevel_3260
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxLevel_36
-- Ledger.Dijkstra.Foreign.HSStructures._.HSLanguage
d_HSLanguage_3264 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_3266 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_3266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InLevel
d_InLevel_3268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_InLevel_3268 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_InLevel_18
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InSubLevel
d_InSubLevel_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InSubLevel_3270 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.InTopLevel
d_InTopLevel_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  () -> ()
d_InTopLevel_3272 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_3288 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_3288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.Tag
d_Tag_3292 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_3294 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.Transaction.TxLevel
d_TxLevel_3300 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__3334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__3336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3338 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3340 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3342 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__3344 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_3346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  Bool
d_'61''61''45'GovAction_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Bool
d_'61''61''45'GovProposal_3352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1548
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3354 ~v0 = du_'61''61''45'Set_3354
du_'61''61''45'Set_3354 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3354 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1484
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3356 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountBalanceIntervals
d_AccountBalanceIntervals_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AccountBalanceIntervals_3358 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AccountOf
d_AccountOf_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_3360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_3362 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_3366 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Addr_3368 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_3372 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnchorOf
d_AnchorOf_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AnyLevelTx_3378 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_3380 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_3380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_AuxiliaryData_3382 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceInterval
d_BalanceInterval_3384 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BalanceIntervalsOf
d_BalanceIntervalsOf_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_3386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_3388 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_3392 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CollateralInputsOf
d_CollateralInputsOf_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_3402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4066
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_3404 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_3406 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_3408 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.CurrentTreasuryOf
d_CurrentTreasuryOf_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_DCertsOf_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_3416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_3416 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T
d_T_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_T_3420 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3422 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DataOf
d_DataOf_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326 ->
  AgdaAny -> [AgdaAny]
d_DataOf_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_3428 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_3430 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_936 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3432 ~v0
  = du_Dec'45'InBalanceInterval_3432
du_Dec'45'InBalanceInterval_3432 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_936 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_970
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
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_3438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_3438 ~v0 = du_Dec'45'isVKey_3438
du_Dec'45'isVKey_3438 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_3438
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3450 ~v0
  = du_DecEq'45'BalanceInterval_3450
du_DecEq'45'BalanceInterval_3450 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1094
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_3452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_3454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_3458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_3460 ~v0
  = du_DecEq'45'DrepThresholds_3460
du_DecEq'45'DrepThresholds_3460 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_3460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_3462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_3462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3466 ~v0 = du_DecEq'45'GovActionType_3466
du_DecEq'45'GovActionType_3466 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3468 ~v0 = du_DecEq'45'GovRole_3468
du_DecEq'45'GovRole_3468 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3468
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1376
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_3472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NativeScript
d_DecEq'45'NativeScript_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_3480 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
                 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1546
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_3484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_3488 ~v0 = du_DecEq'45'PParamGroup_3488
du_DecEq'45'PParamGroup_3488 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_3488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_3490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_3492 ~v0
  = du_DecEq'45'PoolThresholds_3492
du_DecEq'45'PoolThresholds_3492 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_3492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_3494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_3496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_3498 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_3500 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_3502 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3504 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3506 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3510 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3512 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_3514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_3516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1374
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_3520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3524 ~v0 = du_DecEq'45'Vote_3524
du_DecEq'45'Vote_3524 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3524
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_3526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DepositOf
d_DepositOf_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDeposits
d_DirectDeposits_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DirectDeposits_3530 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DirectDepositsOf
d_DirectDepositsOf_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_3532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_3534 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_3540 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.EvalNativeScript
d_EvalNativeScript_3542 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_3546 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.FeesOf?
d_FeesOf'63'_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_3552 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_GovActionData_3556 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_3558 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_3560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_3562 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_3566 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_3568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_3568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_3570 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_3574 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_GovProposalsOf_3578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_3580 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_3582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  ()
d_GovRoleCredential_3582 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_3584 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_3588 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_3592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_3594 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_3598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_3598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GuardsOf
d_GuardsOf_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_3602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount
d_HasAccount_3604 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor
d_HasAnchor_3608 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
d_HasAnchor'45'GovProposal_3612 ~v0
  = du_HasAnchor'45'GovProposal_3612
du_HasAnchor'45'GovProposal_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
du_HasAnchor'45'GovProposal_3612
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_3614 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_3618 ~v0
  = du_HasAttrSize'45'BootstrapAddr_3618
du_HasAttrSize'45'BootstrapAddr_3618 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_3618
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_3620 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_3624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506
d_HasBalanceIntervals'45'Tx_3624 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4598
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_3626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506
d_HasBalanceIntervals'45'TxBody_3626 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_3628 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_3632 ~v0 = du_HasCast'45'Acnt_3632
du_HasCast'45'Acnt_3632 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_3632
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3634 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3634
du_HasCast'45'GovAction'45'Sigma_3634 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3634
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_3636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3636 ~v0 = du_HasCast'45'GovVote_3636
du_HasCast'45'GovVote_3636 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3636
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1474
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3638 ~v0
  = du_HasCast'45'HashProtected_3638
du_HasCast'45'HashProtected_3638 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3640 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3640
du_HasCast'45'HashProtected'45'MaybeScriptHash_3640 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3640
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3642
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4650
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_3644 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_3648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056
d_HasCollateralInputs'45'TopLevelTx_3648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4574
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_3650 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_3654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_3654 ~v0
  = du_HasCredential'45'RewardAddress_3654
du_HasCredential'45'RewardAddress_3654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_3654
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_3656 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_3660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466
d_HasCurrentTreasury'45'Tx_3660 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4674
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466
d_HasCurrentTreasury'45'TxBody_3662 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4672
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_3664 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286
d_HasDCerts'45'Tx_3668 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4586
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_3670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286
d_HasDCerts'45'TxBody_3670 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4584
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_3672 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData
d_HasData_3676 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-Tx
d_HasData'45'Tx_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
d_HasData'45'Tx_3680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
d_HasData'45'TxWitnesses_3682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4652
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit
d_HasDeposit_3684 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
d_HasDeposit'45'GovProposal_3688 ~v0
  = du_HasDeposit'45'GovProposal_3688
du_HasDeposit'45'GovProposal_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
du_HasDeposit'45'GovProposal_3688
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_3690 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486
d_HasDirectDeposits'45'Tx_3694 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4594
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486
d_HasDirectDeposits'45'TxBody_3696 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4592
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'Tx_3698 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4648
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'TxBody_3700 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4646
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?
d_HasFees'63'_3702 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266
d_HasFees'63''45'Tx_3706 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4640
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266
d_HasFees'63''45'TxBody_3708 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4634
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_3710 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovActionState_3714 ~v0
  = du_HasGovAction'45'GovActionState_3714
du_HasGovAction'45'GovActionState_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
du_HasGovAction'45'GovActionState_3714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovProposal_3716 ~v0
  = du_HasGovAction'45'GovProposal_3716
du_HasGovAction'45'GovProposal_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
du_HasGovAction'45'GovProposal_3716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_3718 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovAction_3722 ~v0
  = du_HasGovActionType'45'GovAction_3722
du_HasGovActionType'45'GovAction_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovAction_3722
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovActionState_3724 ~v0
  = du_HasGovActionType'45'GovActionState_3724
du_HasGovActionType'45'GovActionState_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovActionState_3724
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovProposal_3726 ~v0
  = du_HasGovActionType'45'GovProposal_3726
du_HasGovActionType'45'GovProposal_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovProposal_3726
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_3728 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_3732 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
d_HasGovVoter'45'GovVote_3736 ~v0 = du_HasGovVoter'45'GovVote_3736
du_HasGovVoter'45'GovVote_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
du_HasGovVoter'45'GovVote_3736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_3738 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
d_HasGovVotes'45'GovActionState_3742 ~v0
  = du_HasGovVotes'45'GovActionState_3742
du_HasGovVotes'45'GovActionState_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
du_HasGovVotes'45'GovActionState_3742
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards
d_HasGuards_3744 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
d_HasGuards'45'Tx_3748 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4658
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
d_HasGuards'45'TxBody_3750 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4656
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_3752 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546
d_HasIsValidFlag'45'Tx_3756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4568
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_3758 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346
d_HasListOfGovProposals'45'Tx_3762 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4626
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_3764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346
d_HasListOfGovProposals'45'TxBody_3764 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4624
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_3766 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366
d_HasListOfGovVotes'45'Tx_3770 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4622
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366
d_HasListOfGovVotes'45'TxBody_3772 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4620
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_3774 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_3778 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4630
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_3780 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4628
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue
d_HasMintedValue_3782 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246
d_HasMintedValue'45'Tx_3786 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4618
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246
d_HasMintedValue'45'TxBody_3788 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4616
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_3790 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_3794 ~v0
  = du_HasNetworkId'45'BaseAddr_3794
du_HasNetworkId'45'BaseAddr_3794 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_3794
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_3796 ~v0
  = du_HasNetworkId'45'BootstrapAddr_3796
du_HasNetworkId'45'BootstrapAddr_3796 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_3796
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_3798 ~v0
  = du_HasNetworkId'45'RewardAddress_3798
du_HasNetworkId'45'RewardAddress_3798 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_3798
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_3800 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_3804 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_3808 ~v0
  = du_HasPolicy'45'GovProposal_3808
du_HasPolicy'45'GovProposal_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
du_HasPolicy'45'GovProposal_3808
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers
d_HasRedeemers_3810 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_3814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034
d_HasRedeemers'45'Tx_3814 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4572
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034
d_HasRedeemers'45'TxWitnesses_3816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4570
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_3818 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226
d_HasReferenceInputs'45'Tx_3822 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226
d_HasReferenceInputs'45'TxBody_3824 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_3826 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_3830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446
d_HasRequiredSingerHashes'45'Tx_3830 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4670
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_3832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446
d_HasRequiredSingerHashes'45'TxBody_3832 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4668
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_3834 ~v0 = du_HasReserves'45'Acnt_3834
du_HasReserves'45'Acnt_3834 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
du_HasReserves'45'Acnt_3834
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_3836 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3840 ~v0
  = du_HasRewardAddress'45'GovActionState_3840
du_HasRewardAddress'45'GovActionState_3840 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3840
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3842 ~v0
  = du_HasRewardAddress'45'GovProposal_3842
du_HasRewardAddress'45'GovProposal_3842 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts
d_HasScripts_3844 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406
d_HasScripts'45'Tx_3848 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4662
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406
d_HasScripts'45'TxWitnesses_3850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4660
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize
d_HasSize_3852 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146
d_HasSize'45'Tx_3856 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4564
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs
d_HasSpendInputs_3858 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
d_HasSpendInputs'45'Tx_3862 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
d_HasSpendInputs'45'TxBody_3864 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_3866 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526
d_HasStartingBalanceIntervals'45'Tx_3870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4602
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526
d_HasStartingBalanceIntervals'45'TxBody_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4600
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions
d_HasSubTransactions_3874 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104
d_HasSubTransactions'45'TopLevelTx_3878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4578
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_3880 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
d_HasTopLevelGuards'45'Tx_3884 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4582
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
d_HasTopLevelGuards'45'TxBody_3886 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4580
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_3888 ~v0 = du_HasTreasury'45'Acnt_3888
du_HasTreasury'45'Acnt_3888 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_3888
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_3890 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992
d_HasTxBody'45'Tx_3894 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4562
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees
d_HasTxFees_3896 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_3900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080
d_HasTxFees'45'TopLevelTx_3900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4576
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_3902 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
d_HasTxId'45'Tx_3906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4644
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_3908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
d_HasTxId'45'TxBody_3908 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4642
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts
d_HasTxOuts_3910 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_3914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426
d_HasTxOuts'45'Tx_3914 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4666
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_3916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426
d_HasTxOuts'45'TxBody_3916 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4664
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3918 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014
d_HasTxWitnesses'45'Tx_3922 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4566
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_3924 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval
d_HasValidInterval_3928 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186
d_HasValidInterval'45'Tx_3932 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4606
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_3934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186
d_HasValidInterval'45'TxBody_3934 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_3936 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
d_HasVote'45'GovVote_3940 ~v0 = du_HasVote'45'GovVote_3940
du_HasVote'45'GovVote_3940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
du_HasVote'45'GovVote_3940
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1344
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3942 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3946 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3950 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4590
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3952 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4588
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_3954 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2730
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.InBalanceInterval
d_InBalanceInterval_3964 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3968 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3970 ~v0 = du_IsBootstrapAddr'63'_3970
du_IsBootstrapAddr'63'_3970 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3970
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_3974 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_3976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_3976 ~v0 = du_IsKeyHashObj'63'_3976
du_IsKeyHashObj'63'_3976 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_3976
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3978 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3982 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3986 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsValidFlagOf
d_IsValidFlagOf_3990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546 ->
  AgdaAny -> Bool
d_IsValidFlagOf_3990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_3992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ix_3992 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_3994 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_3998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_KeyPair_3998 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_4000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_LangDepView_4000 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Language
d_Language_4002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_4002 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_4004 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_ListOfGovProposalsOf_4008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ListOfGovVotesOf
d_ListOfGovVotesOf_4010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_ListOfGovVotesOf_4010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_4012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_MaxLovelaceSupply'7580'_4012 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_4014 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_4014 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_4016 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.MintedValueOf
d_MintedValueOf_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_4018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NativeScript
d_NativeScript_4020 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_4022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_NeedsHash_4022 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Network
d_Network_4024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Network_4024 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_4028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_4028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_4030 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_4030 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  ()
d_NoOverlappingSpendInputs_4036 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_4038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_4038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_4040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_4042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_4042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_4044 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_4046 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_4050 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_4052 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_4054 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_4058 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_4062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_4062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_4064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UpdateT_4064 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusLanguage
d_PlutusLanguage_4066 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_4068 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_4072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV1_4072 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_4074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV2_4074 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_4076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV3_4076 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusV4
d_PlutusV4_4078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_4078 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_4080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4080 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_4082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_4084 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_4088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_4088 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_4090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Prices_4090 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_4092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ProposedPPUpdates_4092 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_4094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_Quorum_4094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_4096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_RandomnessStabilisationWindow_4096 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_4098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_RandomnessStabilisationWindow'7580'_4098 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_4100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_4100 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemerPtr
d_RedeemerPtr_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_4102 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RedeemersOf
d_RedeemersOf_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ReferenceInputsOf
d_ReferenceInputsOf_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_4124 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_4128 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_4128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_4132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SKey_4132 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Script
d_Script_4136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_4136 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_4138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptAddr_4138 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_4140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptBaseAddr_4140 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_4142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptBootstrapAddr_4142 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_4144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_4144 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_4148 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptsOf
d_ScriptsOf_4152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_4156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Ser_4156 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_4158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_4160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_4160 ~v0 = du_Show'45'Credential_4160
du_Show'45'Credential_4160 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_4160 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_4162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_4162 ~v0
  = du_Show'45'Credential'215'Coin_4162
du_Show'45'Credential'215'Coin_4162 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_4162 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_4164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_4164 ~v0 = du_Show'45'DrepThresholds_4164
du_Show'45'DrepThresholds_4164 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_4164
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_4166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_4166 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_4170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4170 ~v0 = du_Show'45'GovRole_4170
du_Show'45'GovRole_4170 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4170
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_4172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_4176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_4176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_4178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_4178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_4180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_4180 ~v0 = du_Show'45'PoolThresholds_4180
du_Show'45'PoolThresholds_4180 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_4180
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_4182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_4184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_4184 ~v0 = du_Show'45'RewardAddress_4184
du_Show'45'RewardAddress_4184 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_4184
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_4186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_4186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4190 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_4192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4192 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_4194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_4196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_4196 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SizeOf
d_SizeOf_4198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146 ->
  AgdaAny -> Integer
d_SizeOf_4198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_4200 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_4202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_SlotsPerEpoch'7580'_4202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_4204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_4204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SpendInputsOf
d_SpendInputsOf_4206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_4208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_StabilityWindow_4208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_4210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer
d_StabilityWindow'7580'_4210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubLevelTx
d_SubLevelTx_4214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_4214 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.SubTransactionsOf
d_SubTransactionsOf_4216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_4216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4220 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_4222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4222 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4224 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_4228 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelGuardsOf
d_TopLevelGuardsOf_4232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TopLevelTx
d_TopLevelTx_4234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_4234 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_4240 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_4244 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_TxBodyOf_4248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxFeesOf
d_TxFeesOf_4250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_4250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_4252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxId_4252 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_4254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126 ->
  AgdaAny -> AgdaAny
d_TxIdOf_4254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_4256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_4256 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_4258 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxOutsOf
d_TxOutsOf_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_4262 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnessesOf
d_TxWitnessesOf_4266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_TxWitnessesOf_4266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_4268 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_4270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_4270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Update
d_Update_4272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Update_4272 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_4284 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_4286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_4286 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyAddr_4288 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_4290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyBaseAddr_4290 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_4292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKeyBootstrapAddr_4292 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_4296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VRF_4296 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ValidIntervalOf
d_ValidIntervalOf_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value
d_Value_4300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_4300 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_4304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4304 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_4306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_4308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_4308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_4310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Withdrawals_4310 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_4312 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_4312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_4314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4314 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1654
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_4316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4316 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_4318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_4318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_4320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_4320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_4322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_4322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_4324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allDCerts
d_allDCerts_4326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_allDCerts_4326 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4808
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allMintedCoin
d_allMintedCoin_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Integer
d_allMintedCoin_4328
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4792
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4330 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4702
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4332
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputs
d_allSpendInputs_4334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4334 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4690
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4336 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4698
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4338 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_4340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_4340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin
d_coin_4344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_4344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_4346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4346 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_4350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4350 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_4352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_4352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.dataOfTx
d_dataOfTx_4354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
d_dataOfTx_4354 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4774
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_4356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_4356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_4358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_4358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_4360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_4360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_4378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_firstSlot_4378 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.fromPlutusLanguage
d_fromPlutusLanguage_4380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_4380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_4382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_4382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_4384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getAllScripts
d_getAllScripts_4386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4386
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4764
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_4388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_4388 ~v0 = du_getScriptHash_4388
du_getScriptHash_4388 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_4388
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxData
d_getTxData_4390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
d_getTxData_4390 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4784
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.getTxScripts
d_getTxScripts_4392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4392 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4758
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_4394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_4394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_4396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_4396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_4398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_4398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_4400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4400 ~v0 = du_govVoterCredential_4400
du_govVoterCredential_4400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4400
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1124
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_4402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.inject
d_inject_4404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_4404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_4406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_4406 ~v0 = du_isBootstrapAddr_4406
du_isBootstrapAddr_4406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_4406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_4408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4408 ~v0 = du_isGovVoterDRep_4408
du_isGovVoterDRep_4408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4408
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1120
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_4410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_4410 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_4412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_4412 ~v0 = du_isKeyHashObj_4412
du_isKeyHashObj_4412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_4412
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_4414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_4414 ~v0 = du_isKeyHashObj'7495'_4414
du_isKeyHashObj'7495'_4414 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_4414
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_4416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_4416 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_4418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4418 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_4420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4420 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_4422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4422 ~v0 = du_isP1Script'63'_4422
du_isP1Script'63'_4422 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_4424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4424 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_4426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4426 ~v0 = du_isP2Script'63'_4426
du_isP2Script'63'_4426 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_4428 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_4430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_4430 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_4432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_4432 ~v0 = du_isScriptObj_4432
du_isScriptObj_4432 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_4432
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_4434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_4434 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_4436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_4436 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_4438 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_4440 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_4442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_4442 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.khs
d_khs_4444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_4444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.language
d_language_4446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_4446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_4448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_4450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_4450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4800
      v0 v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_4458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4458 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.netId
d_netId_4460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_4460 ~v0 = du_netId_4460
du_netId_4460 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_4460
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_4462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_4462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_4464 ~v0 = du_paramsWF'45'elim_4464
du_paramsWF'45'elim_4464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_4464 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_4466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_4466 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_4468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_4468 ~v0 = du_payCred_4468
du_payCred_4468 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_4468
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_4470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_4470 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.policies
d_policies_4472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny]
d_policies_4472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_4474 ~v0 = du_positivePParams_4474
du_positivePParams_4474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_4474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_4476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_4476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_4478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_4480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> ()
d_ppdWellFormed_4480 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_4482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_4482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4484 ~v0 = du_proposedCC_4484
du_proposedCC_4484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1132
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ps
d_ps_4486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_4486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_4488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4488 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceData
d_referenceData_4490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4490 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4780
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referenceScripts
d_referenceScripts_4492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4732
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4720
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_4496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_4496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4498 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4728
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4500 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4726
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sign
d_sign_4502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_4502 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.size
d_size_4504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_size_4504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendData
d_spendData_4506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4506 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4778
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendScripts
d_spendScripts_4508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4508 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4730
      v0
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.spendTxOuts
d_spendTxOuts_4510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4510 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4714
      v0 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_4512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_4512 ~v0 = du_stakeCred_4512
du_stakeCred_4512 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_4512
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_4514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_suc'7497'_4514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_4516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_4518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4518 ~v0 = du_toP1Script_4518
du_toP1Script_4518 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4518
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_4520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4520 ~v0 = du_toP2Script_4520
du_toP2Script_4520 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_4522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_4522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4524 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4776
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToDatum
d_txOutToDatum_4526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4526 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4680
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToScript
d_txOutToScript_4528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4528 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4676
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txOutToValue
d_txOutToValue_4530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4530 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4684
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_4532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_txidBytes_4532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2728
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_4534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_4534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2724
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_4544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4544 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_4546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4546 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4548 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4688
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessData
d_witnessData_4550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
d_witnessData_4550 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4782
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.witnessScripts
d_witnessScripts_4552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4552 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4748
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ε
d_ε_4554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_ε_4554 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
               (coe v0))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_4556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_4556 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_4558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_4558 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1404
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_4560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_ℕtoEpoch_4560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_4562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_4562 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_4580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_4580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_4582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_4582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_4586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998 ->
  AgdaAny
d_hash_4586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1006
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_4588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_4588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_4602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_4602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_4604 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_4606 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_4610 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_4610 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_4612 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_4612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_4614 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_4614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_4624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_4624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_4626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_4626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_4628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_4628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_4630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_4630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_4632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_4632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_4634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_4634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_4636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_4636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_4638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_4638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_4640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_4640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_4642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_4642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_4662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_4662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_4664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_4664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_4668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_4668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.deposit
d_deposit_4670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  Integer
d_deposit_4670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1116
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_4672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  AgdaAny
d_expiresIn_4672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1110
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_4674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  AgdaAny
d_prevAction_4674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_4676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_4678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_votes_4678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1106
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_4698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_4698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_4700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_4700 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_4702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_4702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_4704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_4704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_4706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_4708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_4708 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_4710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_4710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.action
d_action_4714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_action_4714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.anchor
d_anchor_4716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_4716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1088
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.deposit
d_deposit_4718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Integer
d_deposit_4718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1084
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.policy
d_policy_4720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Maybe AgdaAny
d_policy_4720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.prevAction
d_prevAction_4722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  AgdaAny
d_prevAction_4722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovProposal.returnAddr
d_returnAddr_4724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_4724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1086
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.anchor
d_anchor_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_anchor_4736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.gid
d_gid_4738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_4738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1020
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.vote
d_vote_4740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_vote_4740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVote.voter
d_voter_4742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_voter_4742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvCredential
d_gvCredential_4746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  AgdaAny
d_gvCredential_4746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_994
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVoter.gvRole
d_gvRole_4748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936
d_gvRole_4748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvCC
d_gvCC_4752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_4752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1038
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvDRep
d_gvDRep_4754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_4754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1040
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovVotes.gvSPO
d_gvSPO_4756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_4756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_4760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  Bool
d_'61''61''45'GovAction_4760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_4762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_4762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_4764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064 ->
  Bool
d_'61''61''45'GovProposal_4764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1548
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_4766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_4766 ~v0 = du_'61''61''45'Set_4766
du_'61''61''45'Set_4766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_4766 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1484
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Anchor
d_Anchor_4768 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_4772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_4772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DReps
d_DReps_4780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_DReps_4780 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_4782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_4782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_4784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_4784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_4786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_4786 ~v0 = du_DecEq'45'GovActionType_4786
du_DecEq'45'GovActionType_4786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_4786
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1368
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_4788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_4788 ~v0 = du_DecEq'45'GovRole_4788
du_DecEq'45'GovRole_4788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_4788
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_4790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_4790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1376
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_4792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_4792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1546
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_4794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_4794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1374
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_4796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_4796 ~v0 = du_DecEq'45'Vote_4796
du_DecEq'45'Vote_4796 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_4796
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1372
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_4798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_4798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovAction
d_GovAction_4800 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_4804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_GovActionData_4804 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_4806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_4806 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_4808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_4808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_4810 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_4814 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_4816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_4816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_4818 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRole
d_GovRole_4822 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_4824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_936 ->
  ()
d_GovRoleCredential_4824 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVote
d_GovVote_4826 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_4830 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_4834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_4834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_4836 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_4840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_4840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_4842 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_4846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
d_HasAnchor'45'GovProposal_4846 ~v0
  = du_HasAnchor'45'GovProposal_4846
du_HasAnchor'45'GovProposal_4846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294
du_HasAnchor'45'GovProposal_4846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1348
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_4848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_4848 ~v0
  = du_HasCast'45'GovAction'45'Sigma_4848
du_HasCast'45'GovAction'45'Sigma_4848 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_4848
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1332
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_4850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_4850 ~v0 = du_HasCast'45'GovVote_4850
du_HasCast'45'GovVote_4850 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_4850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1474
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_4852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_4852 ~v0
  = du_HasCast'45'HashProtected_4852
du_HasCast'45'HashProtected_4852 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_4852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1338
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_4854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_4854 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_4854
du_HasCast'45'HashProtected'45'MaybeScriptHash_4854 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_4854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1340
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_4856 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_4860 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_4864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
d_HasDeposit'45'GovProposal_4864 ~v0
  = du_HasDeposit'45'GovProposal_4864
du_HasDeposit'45'GovProposal_4864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314
du_HasDeposit'45'GovProposal_4864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_4866 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_4870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovActionState_4870 ~v0
  = du_HasGovAction'45'GovActionState_4870
du_HasGovAction'45'GovActionState_4870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
du_HasGovAction'45'GovActionState_4870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1354
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_4872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
d_HasGovAction'45'GovProposal_4872 ~v0
  = du_HasGovAction'45'GovProposal_4872
du_HasGovAction'45'GovProposal_4872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176
du_HasGovAction'45'GovProposal_4872
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_4874 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_4878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovAction_4878 ~v0
  = du_HasGovActionType'45'GovAction_4878
du_HasGovActionType'45'GovAction_4878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovAction_4878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1330
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_4880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovActionState_4880 ~v0
  = du_HasGovActionType'45'GovActionState_4880
du_HasGovActionType'45'GovActionState_4880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovActionState_4880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_4882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
d_HasGovActionType'45'GovProposal_4882 ~v0
  = du_HasGovActionType'45'GovProposal_4882
du_HasGovActionType'45'GovProposal_4882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140
du_HasGovActionType'45'GovProposal_4882
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_4884 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_4888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
d_HasGovVoter'45'GovVote_4888 ~v0 = du_HasGovVoter'45'GovVote_4888
du_HasGovVoter'45'GovVote_4888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194
du_HasGovVoter'45'GovVote_4888
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1342
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_4890 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_4894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
d_HasGovVotes'45'GovActionState_4894 ~v0
  = du_HasGovVotes'45'GovActionState_4894
du_HasGovVotes'45'GovActionState_4894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214
du_HasGovVotes'45'GovActionState_4894
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1360
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_4896 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_4900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_4900 ~v0
  = du_HasPolicy'45'GovProposal_4900
du_HasPolicy'45'GovProposal_4900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
du_HasPolicy'45'GovProposal_4900
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_4902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_4902 ~v0
  = du_HasRewardAddress'45'GovActionState_4902
du_HasRewardAddress'45'GovActionState_4902 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_4902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_4904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_4904 ~v0
  = du_HasRewardAddress'45'GovProposal_4904
du_HasRewardAddress'45'GovProposal_4904 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_4904
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1364
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote
d_HasVote_4906 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_4910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
d_HasVote'45'GovVote_4910 ~v0 = du_HasVote'45'GovVote_4910
du_HasVote'45'GovVote_4910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234
du_HasVote'45'GovVote_4910
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1344
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_4912 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_4916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> ()
d_HashProtected_4916 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_4920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946 ->
  ()
d_NeedsHash_4920 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Policy
d_Policy_4926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Policy_4926 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_4928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_4928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_4932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_4932 ~v0 = du_Show'45'GovRole_4932
du_Show'45'GovRole_4932 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_4932
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1366
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_4934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_4934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_4942 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.Vote
d_Vote_4944 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_4946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_4946 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_4948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_4948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_4950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_4950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_4954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_4954 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1654
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2860
         (coe v0))
      v2 v3 v4
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_4956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_4956 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaData
d_gaData_4958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  AgdaAny
d_gaData_4958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.gaType
d_gaType_4960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_gaType_4960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_4962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_4962 ~v0 = du_govVoterCredential_4962
du_govVoterCredential_4962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_4962
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1124
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_4964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_4964 ~v0 = du_isGovVoterDRep_4964
du_isGovVoterDRep_4964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_4964
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1120
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_4968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_4968 ~v0 = du_proposedCC_4968
du_proposedCC_4968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_4968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1132
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_4984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_998
d_AnchorOf_4984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_4988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_4988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1282
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_4992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1314 ->
  AgdaAny -> Integer
d_DepositOf_4992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1322
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_4996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_964
d_GovActionOf_4996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_5000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1140 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_946
d_GovActionTypeOf_5000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1146
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_5004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_986
d_GovVoterOf_5004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_5008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1030
d_GovVotesOf_5008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_5012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_5012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_5016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1234 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_978
d_VoteOf_5016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1242
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_5020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_5020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1166
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAccount.AccountOf
d_AccountOf_5040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_5040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_5044 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_5044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_5048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4506 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_5048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4514
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_5052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_5052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_5056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4056 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_5056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4066
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_5060 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_5060 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_5064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4466 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_5064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_5068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4286 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_DCertsOf_5068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4294
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasData.DataOf
d_DataOf_5072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326 ->
  AgdaAny -> [AgdaAny]
d_DataOf_5072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_5076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_5076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4494
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_5080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4266 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_5080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4274
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_5084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_GovProposalsOf_5084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4314
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_5088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_5088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4394
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_5092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4546 ->
  AgdaAny -> Bool
d_IsValidFlagOf_5092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4554
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_5096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_ListOfGovProposalsOf_5096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4354
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_5100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4366 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_ListOfGovVotesOf_5100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4374
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_5104 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_5104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_5108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4246 ->
  AgdaAny -> AgdaAny
d_MintedValueOf_5108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_5112 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_5112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_5116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_5116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_5120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4034 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_5120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4042
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_5124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4226 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_5124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_5128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4446 ->
  AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_5128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_5132 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_5132 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_5136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4406 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_5136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSize.SizeOf
d_SizeOf_5140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4146 ->
  AgdaAny -> Integer
d_SizeOf_5140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4154
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_5144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_5144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_5148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4526 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_5148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4534
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_5152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_5152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4114
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_5156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_5156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4174
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_5160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3992 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_TxBodyOf_5160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4002
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_5164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4080 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_5164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4090
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_5168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126 ->
  AgdaAny -> AgdaAny
d_TxIdOf_5168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4134
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_5172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4426 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_5172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_5176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4014 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_TxWitnessesOf_5176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4022
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_5180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_5180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_5184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_5184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4194
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_5188 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_5188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_5210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5210 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5214 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5216 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_5218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5218 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_5222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5222 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_5224 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5224 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5226 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5228 ~v0 = du_isMagmaIsomorphism_5228
du_isMagmaIsomorphism_5228 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5228 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5230 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5230 v2
du_isMagmaMonomorphism_5230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5232 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5236 v0
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
d_isRelIsomorphism_5238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5238 ~v0 ~v1 v2 = du_isRelIsomorphism_5238 v2
du_isRelIsomorphism_5238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5238 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5240 ~v0 ~v1 v2 = du_isRelMonomorphism_5240 v2
du_isRelMonomorphism_5240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5240 v0
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
d_surjective_5242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5244 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_5246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5246 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_5250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5250 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_5252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5256 ~v0 = du_isMagmaMonomorphism_5256
du_isMagmaMonomorphism_5256 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5256 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5260 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5262 ~v0 ~v1 v2 = du_isRelMonomorphism_5262 v2
du_isRelMonomorphism_5262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5264 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_5266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5266 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_5296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_5296 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_5298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5298 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_5314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_5314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_5316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_5316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_5318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_5320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_5320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_5322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_5322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_5324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_5324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_5326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_5326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_5328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_5328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_5330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_5330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_5332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_5332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_5334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_5334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_5336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_5336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_5338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_5338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_5340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_5340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_5342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_5342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_5344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_5344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosCommitteeSize
d_leiosCommitteeSize_5346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_5346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_5348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_5350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_5350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_5352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBSize
d_leiosMaxEBSize_5354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_5354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_5356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_5358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.leiosVotingPeriod
d_leiosVotingPeriod_5362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_5362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_5364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_5364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_5366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_5366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_5368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_5368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_5370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_5370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_5372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_5374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_5376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_5376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_5378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_5378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_5380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_5380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minPoolCost
d_minPoolCost_5384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_5384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_5386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_5386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_5388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_5390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_5390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_5392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_5392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_5394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_5394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_5396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_5396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_5398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_5400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_5402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_5404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_5408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_5408 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_5410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_5410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_5412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_5412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_5414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_5414 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_5416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_5416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__5420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__5420 ~v0 = du__'63''8599'__5420
du__'63''8599'__5420 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__5420 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__5422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__5422 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_686
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v2)))))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_5424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_5424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1410
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_5426 a0 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_5430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_5430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_5432 ~v0 = du_modifiedUpdateGroups_5432
du_modifiedUpdateGroups_5432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_5432
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_5434 ~v0 = du_modifiesEconomicGroup_5434
du_modifiesEconomicGroup_5434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesEconomicGroup_5434
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_5436 ~v0
  = du_modifiesGovernanceGroup_5436
du_modifiesGovernanceGroup_5436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesGovernanceGroup_5436
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_5438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_5438 ~v0 = du_modifiesNetworkGroup_5438
du_modifiesNetworkGroup_5438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesNetworkGroup_5438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_5440 ~v0 = du_modifiesSecurityGroup_5440
du_modifiesSecurityGroup_5440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesSecurityGroup_5440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_5442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_5442 ~v0 = du_modifiesTechnicalGroup_5442
du_modifiesTechnicalGroup_5442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesTechnicalGroup_5442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_5444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_5444 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_5446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_5446 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_5448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_5448 ~v0 = du_'8801''45'update_5448
du_'8801''45'update_5448 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_5448 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_5452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_Emax_5452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_5454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_5454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_5456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_5456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_5458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_5458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_5460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_5460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_5462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_5462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_5464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_5464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_5466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_5466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_5468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_5468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_5470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_drepActivity_5470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_5472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_5472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_5474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_5474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_5476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_5476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_5478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_5478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_5480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_5480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_5482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_5482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_5484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_5484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_5486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_5486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_5488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_5488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_5490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_5490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_5492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_5492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_5494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_5494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_5496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_5496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_5498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_5498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_5500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxBlockExUnits_5500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_5502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_5502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_5504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_5504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_5506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_5506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_5508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_5508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_5510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_5510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_5512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxTxExUnits_5512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_5514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_5514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_5516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_5516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_5518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_5518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_5520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_5520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_5522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_5522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_5524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_5524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_5526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_5526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_5528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_5528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_5530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_5530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_5532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_prices_5532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_5534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_5534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_5536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_5536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_5538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_5538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_5540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_5540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__5554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5554 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_5556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_5556 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_5558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_5558 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_5560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_5560 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_5562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_5564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_5564 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_5568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_5570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_5576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_5578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5578 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_5580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5580 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_5584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_5584 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_5588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_5588 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_5590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_5590 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_5592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_5592 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_5594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_5594 ~v0 = du_PlutusV1_5594
du_PlutusV1_5594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV1_5594
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_5596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_5596 ~v0 = du_PlutusV2_5596
du_PlutusV2_5596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV2_5596
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_5598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_5598 ~v0 = du_PlutusV3_5598
du_PlutusV3_5598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV3_5598
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV4
d_PlutusV4_5600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_5600 ~v0 = du_PlutusV4_5600
du_PlutusV4_5600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV4_5600
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_5602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_5602 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_5604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_5604 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_5606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_5608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_5610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_5612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_5614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5614 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_5616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5616 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_5618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5618 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_5620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_5622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_5622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_5624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5624 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_5630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_5630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_5632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_5632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_5634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_5634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_5636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_5636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_5638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_5638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_5642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_5642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_5644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_5644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__5648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__5648 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_5650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_5650 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_5652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_5652 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_5654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_5654 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_5656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_5656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_5658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_5658 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_5660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_5660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_5662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_5662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_5664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_5664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_5666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_5666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_5668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_5668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_5670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_5670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_5672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_5672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_5674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_5674 ~v0
  = du_DecEq'45'LanguageCostModels_5674
du_DecEq'45'LanguageCostModels_5674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_5674
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_5676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_5676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_5678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_5678 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_5680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_5680 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_5682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_5682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_5684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_5684 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_5686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_5686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_5688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_5688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_5690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_5690 ~v0 = du_Hashable'45'Script_5690
du_Hashable'45'Script_5690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_5690
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_5692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_5692 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_5694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_5694 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_5696 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_5700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_5700 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_5702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_5702 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_5704 ~v0 v1 = du_PlutusV1_5704 v1
du_PlutusV1_5704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV1_5704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_5706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_5706 ~v0 v1 = du_PlutusV2_5706 v1
du_PlutusV2_5706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV2_5706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_5708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_5708 ~v0 v1 = du_PlutusV3_5708 v1
du_PlutusV3_5708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV3_5708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV4
d_PlutusV4_5710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_5710 ~v0 v1 = du_PlutusV4_5710 v1
du_PlutusV4_5710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV4_5710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_5712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_5712 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_5714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_5714 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_5716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_5716 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_5718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_5718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_5720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_5720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_5722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_5722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_5724 ~v0
  = du_Show'45'LanguageCostModels_5724
du_Show'45'LanguageCostModels_5724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_5724
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_5726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_5726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_5728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_5728 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_5730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_5730 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_5732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_5732 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_5734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_5734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_5736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_5736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_5738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_5738 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_5740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_5740 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_5742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_5742 ~v0 = du_isP1Script'63'_5742
du_isP1Script'63'_5742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_5742 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_5744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_5744 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_5746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_5746 ~v0 = du_isP2Script'63'_5746
du_isP2Script'63'_5746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_5746 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_5748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_5748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_5750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_5754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_5754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_5756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_5756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_5758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_5758 ~v0 = du_toP1Script_5758
du_toP1Script_5758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_5758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_5760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_5760 ~v0 = du_toP2Script_5760
du_toP2Script_5760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_5760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_5762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_5762 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_5764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_5764 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_5766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_5766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_5770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_5770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__5774 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__5774 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__5776 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__5776 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__5778 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__5778 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_5780 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_5780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_5782 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_5782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_5784 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_5788 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_5792 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_5796 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_5796 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_5798 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_5798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_5800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_5800 ~v0 = du_addValue_5800
du_addValue_5800 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_5800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_5802 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_5802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_5804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_5804 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_5806 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_5806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_5808 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_5808 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_5810 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_5810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_5812 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_5812 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_5814 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_5814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_5816 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_5816 v0
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
d_size_5818 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_5818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_5820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_5820 ~v0 = du_sum'7515'_5820
du_sum'7515'_5820 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_5820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_5822 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_5822 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_5826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5826 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_5830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_5832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5832 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_5834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5834 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_5838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5838 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_5840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5840 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5842 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_5844 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_5844 ~v0 = du_isMagmaIsomorphism_5844
du_isMagmaIsomorphism_5844 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_5844 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5846 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5846 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_5846 v2
du_isMagmaMonomorphism_5846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_5850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_5850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_5852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5852 v0
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
d_isRelIsomorphism_5854 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_5854 ~v0 ~v1 v2 = du_isRelIsomorphism_5854 v2
du_isRelIsomorphism_5854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_5854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_5856 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5856 ~v0 ~v1 v2 = du_isRelMonomorphism_5856 v2
du_isRelMonomorphism_5856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5856 v0
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
d_surjective_5858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_5858 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_5860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5860 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_5862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5862 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_5866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_5866 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_5868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_5868 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_5870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_5870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_5872 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_5872 ~v0 = du_isMagmaMonomorphism_5872
du_isMagmaMonomorphism_5872 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_5872 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_5874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_5874 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_5876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_5876 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_5878 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_5878 ~v0 ~v1 v2 = du_isRelMonomorphism_5878 v2
du_isRelMonomorphism_5878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_5878 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_5880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_5880 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_5882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_5882 = erased
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_5886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  AgdaAny
d_isValid_5886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3856
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txAuxData
d_txAuxData_5888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Maybe AgdaAny
d_txAuxData_5888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txBody
d_txBody_5890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_5890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txSize
d_txSize_5892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Integer
d_txSize_5892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3854
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.Tx.txWitnesses
d_txWitnesses_5894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_5894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_5898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_collateralInputs_5898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3914
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_5900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe Integer
d_currentTreasury_5900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_5902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_mint_5902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3940
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_5904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_5904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_5906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [AgdaAny]
d_requiredSignerHashes_5906 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3956
      v2
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_5908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe AgdaAny
d_scriptIntegrityHash_5908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_5910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe AgdaAny
d_txADhash_5910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_5912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_5912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_5914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_txCerts_5914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_5916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_5916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3950
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_5918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Integer
d_txDonation_5918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3930
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_5920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txFee_5920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3922
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_5922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1064]
d_txGovProposals_5922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_5924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1010]
d_txGovVotes_5924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txGuards
d_txGuards_5926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_5926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_5928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txId_5928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_5930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_5930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_5932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  Maybe AgdaAny
d_txNetworkId_5932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_5934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_5934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_5936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_5936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_5938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txStartingBalanceIntervals_5938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3954
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_5940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  AgdaAny
d_txSubTransactions_5940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3944
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_5942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_5942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_5944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_5944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3924
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_5948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_5948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3970
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_5950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [AgdaAny]
d_scriptsP1_5950 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3976
      v1
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txData
d_txData_5952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  [AgdaAny]
d_txData_5952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_5954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_5954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
      (coe v0)
-- Ledger.Dijkstra.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_5956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_5956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
      (coe v0)
