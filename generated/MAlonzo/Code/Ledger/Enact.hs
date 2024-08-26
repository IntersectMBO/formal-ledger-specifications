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

module MAlonzo.Code.Ledger.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__210
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- _.Credential
d_Credential_22 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_50 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_50 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_50 v2 v3
du_DecEq'45'Credential_50 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_50 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_72 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_72 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_72 v1 v2 v3
du_DecEq'45'RwdAddr_72 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_72 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.PParams
d_PParams_152 a0 = ()
-- _.UpdateT
d_UpdateT_156 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_156 = erased
-- _.ProtVer
d_ProtVer_168 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_168 = erased
-- _.RwdAddr
d_RwdAddr_174 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_188 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_188 = erased
-- _.applyUpdate
d_applyUpdate_268 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_268 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1012 (coe v0)))
-- _.preoEpoch
d_preoEpoch_340 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_340 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- Ledger.Enact._.GovAction
d_GovAction_670 a0 = ()
-- Ledger.Enact._.GovActionID
d_GovActionID_672 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_672 = erased
-- Ledger.Enact._.HashProtected
d_HashProtected_682 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_682 = erased
-- Ledger.Enact._.NeedsHash
d_NeedsHash_686 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_NeedsHash_686 = erased
-- Ledger.Enact.EnactEnv
d_EnactEnv_808 a0 = ()
data T_EnactEnv_808
  = C_'10214'_'44'_'44'_'10215''7497'_822 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          Integer AgdaAny
-- Ledger.Enact.EnactEnv.gid
d_gid_816 ::
  T_EnactEnv_808 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_816 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_822 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.treasury
d_treasury_818 :: T_EnactEnv_808 -> Integer
d_treasury_818 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_822 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.epoch
d_epoch_820 :: T_EnactEnv_808 -> AgdaAny
d_epoch_820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_822 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState
d_EnactState_824 a0 = ()
data T_EnactState_824
  = C_EnactState'46'constructor_1485 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Enact.EnactState.cc
d_cc_836 ::
  T_EnactState_824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_836 v0
  = case coe v0 of
      C_EnactState'46'constructor_1485 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.constitution
d_constitution_838 ::
  T_EnactState_824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_838 v0
  = case coe v0 of
      C_EnactState'46'constructor_1485 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pv
d_pv_840 ::
  T_EnactState_824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_840 v0
  = case coe v0 of
      C_EnactState'46'constructor_1485 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pparams
d_pparams_842 ::
  T_EnactState_824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_842 v0
  = case coe v0 of
      C_EnactState'46'constructor_1485 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.withdrawals
d_withdrawals_844 ::
  T_EnactState_824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_844 v0
  = case coe v0 of
      C_EnactState'46'constructor_1485 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.ccCreds
d_ccCreds_846 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_846 ~v0 v1 = du_ccCreds_846 v1
du_ccCreds_846 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_846 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Interface.IsSet.du_dom_540
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_430
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHash
d_getHash_852 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_852 ~v0 v1 v2 = du_getHash_852 v1 v2
du_getHash_852 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_852 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v2 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHashES
d_getHashES_864 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_864 ~v0 v1 v2 = du_getHashES_864 v1 v2
du_getHashES_864 ::
  T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_864 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_836 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v2 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_836 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_838 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_840 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_842 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__880 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__880
  = C_Enact'45'NoConf_908 |
    C_Enact'45'NewComm_916 (AgdaAny ->
                            MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                            MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_918 | C_Enact'45'HF_920 |
    C_Enact'45'PParams_922 |
    C_Enact'45'Wdrl_928 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_930
