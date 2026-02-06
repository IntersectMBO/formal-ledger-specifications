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

module MAlonzo.Code.Ledger.Conway.Conformance.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Deposits
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_60 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
            (coe v0)))
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1336
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
            (coe v0)))
-- _.Epoch
d_Epoch_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_168 = erased
-- _.GovActionID
d_GovActionID_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_180 = erased
-- _.GovActionState
d_GovActionState_184 a0 = ()
-- _.THash
d_THash_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_390 = erased
-- _.Number-Epoch
d_Number'45'Epoch_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
         (coe v0))
-- _.RewardAddress
d_RewardAddress_488 a0 = ()
-- _.addEpoch
d_addEpoch_654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
         (coe v0))
-- _.Acnt.reserves
d_reserves_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_reserves_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
      (coe v0)
-- _.Acnt.treasury
d_treasury_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_treasury_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
      (coe v0)
-- _.GovActionState.action
d_action_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870
d_action_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  AgdaAny
d_expiresIn_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1062
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  AgdaAny
d_prevAction_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1066
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1060
      (coe v0)
-- _.GovActionState.votes
d_votes_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958
d_votes_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_976 a0 = ()
-- _.RewardAddress.net
d_net_1638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RewardAddress.stake
d_stake_1640 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1640 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1988 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_2006 ~v0 ~v1 = du_ccCreds_2006
du_ccCreds_2006 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_ccCreds_2006
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1204
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1164 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1166
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1170
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1168 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1172
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.C.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2194 v0 ~v1
  = du_DecEq'45'DepositPurpose_2194 v0
du_DecEq'45'DepositPurpose_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2194 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
         (coe v1))
-- Ledger.Conway.Conformance.Epoch._.C.HasCast-GState
d_HasCast'45'GState_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2242 ~v0 ~v1 = du_HasCast'45'GState_2242
du_HasCast'45'GState_2242 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2242
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1606
-- Ledger.Conway.Conformance.Epoch._.C.HasCast-LState
d_HasCast'45'LState_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2246 ~v0 ~v1 = du_HasCast'45'LState_2246
du_HasCast'45'LState_2246 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2246
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_HasCast'45'LState_2662
-- Ledger.Conway.Conformance.Epoch._.C.HasCast-PState
d_HasCast'45'PState_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2248 ~v0 ~v1 = du_HasCast'45'PState_2248
du_HasCast'45'PState_2248 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1588
-- Ledger.Conway.Conformance.Epoch._.C.HasCast-UTxOState
d_HasCast'45'UTxOState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2250 ~v0 ~v1 = du_HasCast'45'UTxOState_2250
du_HasCast'45'UTxOState_2250 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOState_2492
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_3692 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_3724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_3724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_3726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2656 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_3728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_3728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2654
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1840 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__3732 = erased
-- Ledger.Conway.Conformance.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_3738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_3738 ~v0 ~v1
  = du_HasCast'45'RatifyState_3738
du_HasCast'45'RatifyState_3738 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_3738
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1918
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_3766 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_3900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  Bool
d_delay_3900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1884
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_3902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_3902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1880 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_3904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1882
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_4068 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.GState
d_GState_4086 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_4192 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.GState.ccHotKeys
d_ccHotKeys_4370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_4370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1582
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.deposits
d_deposits_4372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_4372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1584
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.dreps
d_dreps_4374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_4374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1580 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.fPools
d_fPools_4422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_4422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1410
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_4424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_4424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1408
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_4426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_4426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__4442 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch._.BlocksMade
d_BlocksMade_4444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  ()
d_BlocksMade_4444 = erased
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate
d_RewardUpdate_4462 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Snapshot
d_Snapshot_4470 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Snapshots
d_Snapshots_4474 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.flowConservation
d_flowConservation_4514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_4514 = erased
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.rs
d_rs_4516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_4516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2968 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.Δf
d_Δf_4518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer
d_Δf_4518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2966 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_4520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2976
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.Δr
d_Δr_4522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer
d_Δr_4522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2964 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.Δt
d_Δt_4524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer
d_Δt_4524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2962 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_4526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_4526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2974
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshot.delegations
d_delegations_4530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_4530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2990
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshot.pools
d_pools_4532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_4532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2992
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshot.stake
d_stake_4534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_4534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2988
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshots.feeSS
d_feeSS_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  Integer
d_feeSS_4538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3054
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshots.go
d_go_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980
d_go_4540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3052 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshots.mark
d_mark_4542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980
d_mark_4542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3048
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.Snapshots.set
d_set_4544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980
d_set_4544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3050
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.getOrphans
d_getOrphans_4548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_4548 v0 ~v1 = du_getOrphans_4548 v0
du_getOrphans_4548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_4548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3728
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.getStakeCred
d_getStakeCred_4550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_4550 ~v0 ~v1 = du_getStakeCred_4550
du_getStakeCred_4550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_4550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3384
-- Ledger.Conway.Conformance.Epoch._.mkStakeDistrs
d_mkStakeDistrs_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1416 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1828
d_mkStakeDistrs_4552 v0 ~v1 = du_mkStakeDistrs_4552 v0
du_mkStakeDistrs_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1416 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1828
du_mkStakeDistrs_4552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3664
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.toRewardAddress
d_toRewardAddress_4554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_4554 v0 ~v1 = du_toRewardAddress_4554 v0
du_toRewardAddress_4554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
du_toRewardAddress_4554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3380
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState
d_EpochState_4564 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState
d_NewEpochState_4644 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState.acnt
d_acnt_4700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_4700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3230 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState.es
d_es_4702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_4702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3236 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState.fut
d_fut_4704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
d_fut_4704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3238 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState.ls
d_ls_4706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2880
d_ls_4706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.EpochState.ss
d_ss_4708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
d_ss_4708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3232 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.bcur
d_bcur_4744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3306 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.bprev
d_bprev_4746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_4746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3304
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.epochState
d_epochState_4748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3218
d_epochState_4748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3308
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.lastEpoch
d_lastEpoch_4750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  AgdaAny
d_lastEpoch_4750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3302
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.pd
d_pd_4752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_4752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3312 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochSpec.NewEpochState.ru
d_ru_4754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3288 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944
d_ru_4754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3310 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_4808 a0 a1 = ()
data T_EpochState_4808
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_4820 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_4820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_4822 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
d_ss_4822 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_4824 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
d_ls_4824 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_4826 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_4826 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_4828 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
d_fut_4828 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_4832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  ()
d_PoolDelegatedStake_4832 = erased
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_4834 a0 a1 = ()
data T_NewEpochState_4834
  = C_constructor_4860 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_EpochState_4808
                       (Maybe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_4848 :: T_NewEpochState_4834 -> AgdaAny
d_lastEpoch_4848 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.bprev
d_bprev_4850 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_4850 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.bcur
d_bcur_4852 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4852 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_4854 :: T_NewEpochState_4834 -> T_EpochState_4808
d_epochState_4854 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_4856 ::
  T_NewEpochState_4834 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944
d_ru_4856 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.pd
d_pd_4858 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_4858 v0
  = case coe v0 of
      C_constructor_4860 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_4862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_4862 ~v0 ~v1
  = du_HasCast'45'EpochState_4862
du_HasCast'45'EpochState_4862 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_4862
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (4808 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.EpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (28 :: Integer) (11290226015743492707 :: Integer) "_.Acnt"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4808 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.EpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4474 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch._.Snapshots"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (4808 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.EpochState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (3692 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch._.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (4808 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.EpochState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1988 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (4808 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch.EpochState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (3766 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830))
-- Ledger.Conway.Conformance.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_4864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_4864 ~v0 ~v1
  = du_HasCast'45'NewEpochState_4864
du_HasCast'45'NewEpochState_4864 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_4864
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (4834 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (168 :: Integer) (11290226015743492707 :: Integer) "_.Epoch"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4834 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (4444 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch._.BlocksMade"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (4834 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (4444 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch._.BlocksMade"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (4834 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (4808 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.EpochState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (4834 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (10 :: Integer) (15412666033012224255 :: Integer)
                                             "Agda.Builtin.Maybe.Maybe"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (20 :: Integer)
                                                      (10880583612240331187 :: Integer)
                                                      "Agda.Primitive.lzero"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (4462 :: Integer)
                                                         (11290226015743492707 :: Integer)
                                                         "Ledger.Conway.Conformance.Epoch._.RewardUpdate"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (4834 :: Integer) (11290226015743492707 :: Integer)
                                                "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                       (coe ("r" :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (4832 :: Integer) (11290226015743492707 :: Integer)
                                                "Ledger.Conway.Conformance.Epoch.PoolDelegatedStake"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
         (coe C_constructor_4860))
-- Ledger.Conway.Conformance.Epoch.EpochStateFromConf
d_EpochStateFromConf_4866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateFromConf_4866 ~v0 ~v1 = du_EpochStateFromConf_4866
du_EpochStateFromConf_4866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_EpochStateFromConf_4866
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
              (coe
                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                 (coe
                    MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                    (coe
                       MAlonzo.Code.Data.List.Base.du_length_268
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (3218 :: Integer) (4112555248803407823 :: Integer)
                                            "Ledger.Conway.Specification.Epoch.EpochState"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                   (coe ("r" :: Data.Text.Text))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (28 :: Integer) (4112555248803407823 :: Integer)
                                            "_.Acnt"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (3218 :: Integer) (4112555248803407823 :: Integer)
                                               "Ledger.Conway.Specification.Epoch.EpochState"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                      (coe ("r" :: Data.Text.Text))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (2948 :: Integer) (4112555248803407823 :: Integer)
                                               "Ledger.Conway.Specification.Epoch._.Snapshots"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (3218 :: Integer) (4112555248803407823 :: Integer)
                                                  "Ledger.Conway.Specification.Epoch.EpochState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                         (coe ("r" :: Data.Text.Text))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (2662 :: Integer) (4112555248803407823 :: Integer)
                                                  "Ledger.Conway.Specification.Epoch._.LState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (3218 :: Integer)
                                                     (4112555248803407823 :: Integer)
                                                     "Ledger.Conway.Specification.Epoch.EpochState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                            (coe ("r" :: Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (2404 :: Integer)
                                                     (4112555248803407823 :: Integer)
                                                     "Ledger.Conway.Specification.Epoch._.EnactState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (3218 :: Integer)
                                                        (4112555248803407823 :: Integer)
                                                        "Ledger.Conway.Specification.Epoch.EpochState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                               (coe ("r" :: Data.Text.Text))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (2770 :: Integer)
                                                        (4112555248803407823 :: Integer)
                                                        "Ledger.Conway.Specification.Epoch._.RatifyState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3240)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_acnt_4820 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_ss_4822 (coe v1))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.du_LStateFromConf_4024)
                          (coe d_ls_4824 (coe v1)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe d_es_4826 (coe v1)) (coe d_fut_4828 (coe v1))))))))
-- Ledger.Conway.Conformance.Epoch._.acnt
d_acnt_4872 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_4872 v0 = coe d_acnt_4820 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.es
d_es_4874 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_4874 v0 = coe d_es_4826 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.fut
d_fut_4876 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
d_fut_4876 v0 = coe d_fut_4828 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.ls
d_ls_4878 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
d_ls_4878 v0 = coe d_ls_4824 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.ss
d_ss_4880 ::
  T_EpochState_4808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
d_ss_4880 v0 = coe d_ss_4822 (coe v0)
-- Ledger.Conway.Conformance.Epoch.EpochStateToConf
d_EpochStateToConf_4882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateToConf_4882 ~v0 ~v1 = du_EpochStateToConf_4882
du_EpochStateToConf_4882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_EpochStateToConf_4882
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            coe
              C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3230
                 (coe v1))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3232 (coe v1))
              (coe
                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                 (coe
                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                    (coe
                       MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                       (coe
                          MAlonzo.Code.Data.List.Base.du_length_268
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (2646 :: Integer) (16262344046643431141 :: Integer)
                                               "Ledger.Conway.Conformance.Ledger.LState"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                      (coe ("r" :: Data.Text.Text))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (2104 :: Integer) (16262344046643431141 :: Integer)
                                               "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (2646 :: Integer)
                                                  (16262344046643431141 :: Integer)
                                                  "Ledger.Conway.Conformance.Ledger.LState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                         (coe ("r" :: Data.Text.Text))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (2060 :: Integer)
                                                  (16262344046643431141 :: Integer)
                                                  "Ledger.Conway.Conformance.Ledger._.GovState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (2646 :: Integer)
                                                     (16262344046643431141 :: Integer)
                                                     "Ledger.Conway.Conformance.Ledger.LState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                            (coe ("r" :: Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (2212 :: Integer)
                                                     (16262344046643431141 :: Integer)
                                                     "Ledger.Conway.Conformance.Ledger._.CertState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2660)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2888
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234 (coe v1)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2890
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234 (coe v1)))
                       (coe
                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                          (coe
                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                             (coe
                                MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_length_268
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (1588 :: Integer)
                                                        (9415815257714143971 :: Integer)
                                                        "Ledger.Conway.Conformance.Certs.CertState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                               (coe ("r" :: Data.Text.Text))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (1552 :: Integer)
                                                        (9415815257714143971 :: Integer)
                                                        "Ledger.Conway.Conformance.Certs.DState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (1588 :: Integer)
                                                           (9415815257714143971 :: Integer)
                                                           "Ledger.Conway.Conformance.Certs.CertState"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                  (coe ("r" :: Data.Text.Text))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (1318 :: Integer)
                                                           (9415815257714143971 :: Integer)
                                                           "Ledger.Conway.Conformance.Certs.Certs.PState"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                        (coe
                                                           (MAlonzo.RTE.QName
                                                              (1588 :: Integer)
                                                              (9415815257714143971 :: Integer)
                                                              "Ledger.Conway.Conformance.Certs.CertState"
                                                              (MAlonzo.RTE.Fixity
                                                                 MAlonzo.RTE.NonAssoc
                                                                 MAlonzo.RTE.Unrelated)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                     (coe ("r" :: Data.Text.Text))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                        (coe
                                                           (MAlonzo.RTE.QName
                                                              (1572 :: Integer)
                                                              (9415815257714143971 :: Integer)
                                                              "Ledger.Conway.Conformance.Certs.GState"
                                                              (MAlonzo.RTE.Fixity
                                                                 MAlonzo.RTE.NonAssoc
                                                                 MAlonzo.RTE.Unrelated)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1602)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                (coe
                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                   (coe
                                      MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_length_268
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                        (coe
                                                           (MAlonzo.RTE.QName
                                                              (1552 :: Integer)
                                                              (9415815257714143971 :: Integer)
                                                              "Ledger.Conway.Conformance.Certs.DState"
                                                              (MAlonzo.RTE.Fixity
                                                                 MAlonzo.RTE.NonAssoc
                                                                 MAlonzo.RTE.Unrelated)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                     (coe ("r" :: Data.Text.Text))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                        (coe
                                                           (MAlonzo.RTE.QName
                                                              (970 :: Integer)
                                                              (9415815257714143971 :: Integer)
                                                              "Ledger.Conway.Conformance.Certs._.VoteDelegs"
                                                              (MAlonzo.RTE.Fixity
                                                                 MAlonzo.RTE.NonAssoc
                                                                 MAlonzo.RTE.Unrelated)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (1552 :: Integer)
                                                                 (9415815257714143971 :: Integer)
                                                                 "Ledger.Conway.Conformance.Certs.DState"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                        (coe ("r" :: Data.Text.Text))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (182 :: Integer)
                                                                 (9254951203007797098 :: Integer)
                                                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.RightAssoc
                                                                    (MAlonzo.RTE.Related
                                                                       (1.0 :: Double)))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                    (coe
                                                                       (MAlonzo.RTE.QName
                                                                          (42 :: Integer)
                                                                          (9415815257714143971 ::
                                                                             Integer)
                                                                          "_.Credential"
                                                                          (MAlonzo.RTE.Fixity
                                                                             MAlonzo.RTE.NonAssoc
                                                                             MAlonzo.RTE.Unrelated)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (320 :: Integer)
                                                                                   (753823221557309123 ::
                                                                                      Integer)
                                                                                   "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (1194 ::
                                                                                               Integer)
                                                                                            (7805089389717466778 ::
                                                                                               Integer)
                                                                                            "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                               (coe
                                                                                                  (1 ::
                                                                                                     Integer))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (26 ::
                                                                                         Integer)
                                                                                      (14321319370142338143 ::
                                                                                         Integer)
                                                                                      "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                            (coe
                                                                                               (MAlonzo.RTE.QName
                                                                                                  (206 ::
                                                                                                     Integer)
                                                                                                  (14321319370142338143 ::
                                                                                                     Integer)
                                                                                                  "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                     (coe
                                                                                                        (MAlonzo.RTE.QName
                                                                                                           (610 ::
                                                                                                              Integer)
                                                                                                           (7805089389717466778 ::
                                                                                                              Integer)
                                                                                                           "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                              (coe
                                                                                                                 (1 ::
                                                                                                                    Integer))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (210 ::
                                                                                            Integer)
                                                                                         (14321319370142338143 ::
                                                                                            Integer)
                                                                                         "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                            (coe
                                                                                               (MAlonzo.RTE.QName
                                                                                                  (610 ::
                                                                                                     Integer)
                                                                                                  (7805089389717466778 ::
                                                                                                     Integer)
                                                                                                  "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                     (coe
                                                                                                        (1 ::
                                                                                                           Integer))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                       (coe
                                                                          (MAlonzo.RTE.QName
                                                                             (192 :: Integer)
                                                                             (9415815257714143971 ::
                                                                                Integer)
                                                                             "_.THash"
                                                                             (MAlonzo.RTE.Fixity
                                                                                MAlonzo.RTE.NonAssoc
                                                                                MAlonzo.RTE.Unrelated)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (1552 :: Integer)
                                                                    (9415815257714143971 :: Integer)
                                                                    "Ledger.Conway.Conformance.Certs.DState"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                           (coe ("r" :: Data.Text.Text))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (1336 :: Integer)
                                                                    (9415815257714143971 :: Integer)
                                                                    "Ledger.Conway.Conformance.Certs.Certs.Rewards"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                 (coe
                                                                    (MAlonzo.RTE.QName
                                                                       (1552 :: Integer)
                                                                       (9415815257714143971 ::
                                                                          Integer)
                                                                       "Ledger.Conway.Conformance.Certs.DState"
                                                                       (MAlonzo.RTE.Fixity
                                                                          MAlonzo.RTE.NonAssoc
                                                                          MAlonzo.RTE.Unrelated)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                              (coe ("r" :: Data.Text.Text))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                 (coe
                                                                    (MAlonzo.RTE.QName
                                                                       (1202 :: Integer)
                                                                       (9415815257714143971 ::
                                                                          Integer)
                                                                       "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                                                       (MAlonzo.RTE.Fixity
                                                                          MAlonzo.RTE.NonAssoc
                                                                          MAlonzo.RTE.Unrelated)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1570)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1392
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1436
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                               (coe v1)))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1394
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1436
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1396
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1436
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Deposits.du_certDeposits_4154
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                  (coe v1))))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1438
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                         (coe v1))))
                                (coe
                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                   (coe
                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                      (coe
                                         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_length_268
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (1572 :: Integer)
                                                                 (9415815257714143971 :: Integer)
                                                                 "Ledger.Conway.Conformance.Certs.GState"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                        (coe ("r" :: Data.Text.Text))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (182 :: Integer)
                                                                 (9254951203007797098 :: Integer)
                                                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.RightAssoc
                                                                    (MAlonzo.RTE.Related
                                                                       (1.0 :: Double)))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                    (coe
                                                                       (MAlonzo.RTE.QName
                                                                          (42 :: Integer)
                                                                          (9415815257714143971 ::
                                                                             Integer)
                                                                          "_.Credential"
                                                                          (MAlonzo.RTE.Fixity
                                                                             MAlonzo.RTE.NonAssoc
                                                                             MAlonzo.RTE.Unrelated)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (320 :: Integer)
                                                                                   (753823221557309123 ::
                                                                                      Integer)
                                                                                   "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (1194 ::
                                                                                               Integer)
                                                                                            (7805089389717466778 ::
                                                                                               Integer)
                                                                                            "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                               (coe
                                                                                                  (1 ::
                                                                                                     Integer))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (26 ::
                                                                                         Integer)
                                                                                      (14321319370142338143 ::
                                                                                         Integer)
                                                                                      "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                            (coe
                                                                                               (MAlonzo.RTE.QName
                                                                                                  (206 ::
                                                                                                     Integer)
                                                                                                  (14321319370142338143 ::
                                                                                                     Integer)
                                                                                                  "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                     (coe
                                                                                                        (MAlonzo.RTE.QName
                                                                                                           (610 ::
                                                                                                              Integer)
                                                                                                           (7805089389717466778 ::
                                                                                                              Integer)
                                                                                                           "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                              (coe
                                                                                                                 (1 ::
                                                                                                                    Integer))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (210 ::
                                                                                            Integer)
                                                                                         (14321319370142338143 ::
                                                                                            Integer)
                                                                                         "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                            (coe
                                                                                               (MAlonzo.RTE.QName
                                                                                                  (610 ::
                                                                                                     Integer)
                                                                                                  (7805089389717466778 ::
                                                                                                     Integer)
                                                                                                  "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                     (coe
                                                                                                        (1 ::
                                                                                                           Integer))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                       (coe
                                                                          (MAlonzo.RTE.QName
                                                                             (124 :: Integer)
                                                                             (9415815257714143971 ::
                                                                                Integer)
                                                                             "_.Epoch"
                                                                             (MAlonzo.RTE.Fixity
                                                                                MAlonzo.RTE.NonAssoc
                                                                                MAlonzo.RTE.Unrelated)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (1572 :: Integer)
                                                                    (9415815257714143971 :: Integer)
                                                                    "Ledger.Conway.Conformance.Certs.GState"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                           (coe ("r" :: Data.Text.Text))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (182 :: Integer)
                                                                    (9254951203007797098 :: Integer)
                                                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.RightAssoc
                                                                       (MAlonzo.RTE.Related
                                                                          (1.0 :: Double)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                       (coe
                                                                          (MAlonzo.RTE.QName
                                                                             (42 :: Integer)
                                                                             (9415815257714143971 ::
                                                                                Integer)
                                                                             "_.Credential"
                                                                             (MAlonzo.RTE.Fixity
                                                                                MAlonzo.RTE.NonAssoc
                                                                                MAlonzo.RTE.Unrelated)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (320 ::
                                                                                         Integer)
                                                                                      (753823221557309123 ::
                                                                                         Integer)
                                                                                      "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (1194 ::
                                                                                                  Integer)
                                                                                               (7805089389717466778 ::
                                                                                                  Integer)
                                                                                               "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                  (coe
                                                                                                     (1 ::
                                                                                                        Integer))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (26 ::
                                                                                            Integer)
                                                                                         (14321319370142338143 ::
                                                                                            Integer)
                                                                                         "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (206 ::
                                                                                                        Integer)
                                                                                                     (14321319370142338143 ::
                                                                                                        Integer)
                                                                                                     "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                        (coe
                                                                                                           (MAlonzo.RTE.QName
                                                                                                              (610 ::
                                                                                                                 Integer)
                                                                                                              (7805089389717466778 ::
                                                                                                                 Integer)
                                                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                 (coe
                                                                                                                    (1 ::
                                                                                                                       Integer))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (210 ::
                                                                                               Integer)
                                                                                            (14321319370142338143 ::
                                                                                               Integer)
                                                                                            "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (610 ::
                                                                                                        Integer)
                                                                                                     (7805089389717466778 ::
                                                                                                        Integer)
                                                                                                     "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                        (coe
                                                                                                           (1 ::
                                                                                                              Integer))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (10 :: Integer)
                                                                                (15412666033012224255 ::
                                                                                   Integer)
                                                                                "Agda.Builtin.Maybe.Maybe"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (20 ::
                                                                                            Integer)
                                                                                         (10880583612240331187 ::
                                                                                            Integer)
                                                                                         "Agda.Primitive.lzero"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (42 ::
                                                                                               Integer)
                                                                                            (9415815257714143971 ::
                                                                                               Integer)
                                                                                            "_.Credential"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (320 ::
                                                                                                        Integer)
                                                                                                     (753823221557309123 ::
                                                                                                        Integer)
                                                                                                     "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                        (coe
                                                                                                           (MAlonzo.RTE.QName
                                                                                                              (1194 ::
                                                                                                                 Integer)
                                                                                                              (7805089389717466778 ::
                                                                                                                 Integer)
                                                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                 (coe
                                                                                                                    (1 ::
                                                                                                                       Integer))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (26 ::
                                                                                                           Integer)
                                                                                                        (14321319370142338143 ::
                                                                                                           Integer)
                                                                                                        "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                              (coe
                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                    (206 ::
                                                                                                                       Integer)
                                                                                                                    (14321319370142338143 ::
                                                                                                                       Integer)
                                                                                                                    "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                       (coe
                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                             (610 ::
                                                                                                                                Integer)
                                                                                                                             (7805089389717466778 ::
                                                                                                                                Integer)
                                                                                                                             "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                (coe
                                                                                                                                   (1 ::
                                                                                                                                      Integer))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                     (coe
                                                                                                        (MAlonzo.RTE.QName
                                                                                                           (210 ::
                                                                                                              Integer)
                                                                                                           (14321319370142338143 ::
                                                                                                              Integer)
                                                                                                           "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                              (coe
                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                    (610 ::
                                                                                                                       Integer)
                                                                                                                    (7805089389717466778 ::
                                                                                                                       Integer)
                                                                                                                    "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                       (coe
                                                                                                                          (1 ::
                                                                                                                             Integer))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                 (coe
                                                                    (MAlonzo.RTE.QName
                                                                       (1572 :: Integer)
                                                                       (9415815257714143971 ::
                                                                          Integer)
                                                                       "Ledger.Conway.Conformance.Certs.GState"
                                                                       (MAlonzo.RTE.Fixity
                                                                          MAlonzo.RTE.NonAssoc
                                                                          MAlonzo.RTE.Unrelated)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                              (coe ("r" :: Data.Text.Text))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                 (coe
                                                                    (MAlonzo.RTE.QName
                                                                       (1202 :: Integer)
                                                                       (9415815257714143971 ::
                                                                          Integer)
                                                                       "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                                                       (MAlonzo.RTE.Fixity
                                                                          MAlonzo.RTE.NonAssoc
                                                                          MAlonzo.RTE.Unrelated)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1586)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1422
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1440
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1424
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1440
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2892
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Deposits.du_certDeposits_4154
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3234
                                                  (coe v1)))))))))))))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3236 (coe v1))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3238
                 (coe v1))))
-- Ledger.Conway.Conformance.Epoch.NewEpochStateFromConf
d_NewEpochStateFromConf_4900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateFromConf_4900 ~v0 ~v1
  = du_NewEpochStateFromConf_4900
du_NewEpochStateFromConf_4900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_NewEpochStateFromConf_4900
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
              (coe
                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                 (coe
                    MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                    (coe
                       MAlonzo.Code.Data.List.Base.du_length_268
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (3288 :: Integer) (4112555248803407823 :: Integer)
                                            "Ledger.Conway.Specification.Epoch.NewEpochState"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                   (coe ("r" :: Data.Text.Text))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (168 :: Integer) (4112555248803407823 :: Integer)
                                            "_.Epoch"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (3288 :: Integer) (4112555248803407823 :: Integer)
                                               "Ledger.Conway.Specification.Epoch.NewEpochState"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                      (coe ("r" :: Data.Text.Text))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (2920 :: Integer) (4112555248803407823 :: Integer)
                                               "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (3288 :: Integer) (4112555248803407823 :: Integer)
                                                  "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                         (coe ("r" :: Data.Text.Text))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (2920 :: Integer) (4112555248803407823 :: Integer)
                                                  "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (3288 :: Integer)
                                                     (4112555248803407823 :: Integer)
                                                     "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                            (coe ("r" :: Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (3218 :: Integer)
                                                     (4112555248803407823 :: Integer)
                                                     "Ledger.Conway.Specification.Epoch.EpochState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (3288 :: Integer)
                                                        (4112555248803407823 :: Integer)
                                                        "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                               (coe ("r" :: Data.Text.Text))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (10 :: Integer)
                                                        (15412666033012224255 :: Integer)
                                                        "Agda.Builtin.Maybe.Maybe"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (20 :: Integer)
                                                                 (10880583612240331187 :: Integer)
                                                                 "Agda.Primitive.lzero"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (2938 :: Integer)
                                                                    (4112555248803407823 :: Integer)
                                                                    "Ledger.Conway.Specification.Epoch._.RewardUpdate"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (3288 :: Integer)
                                                           (4112555248803407823 :: Integer)
                                                           "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                  (coe ("r" :: Data.Text.Text))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (3286 :: Integer)
                                                           (4112555248803407823 :: Integer)
                                                           "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3314)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_lastEpoch_4848 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_bprev_4850 (coe v1))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe d_bcur_4852 (coe v1))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                             (coe du_EpochStateFromConf_4866) (coe d_epochState_4854 (coe v1)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe d_ru_4856 (coe v1)) (coe d_pd_4858 (coe v1)))))))))
-- Ledger.Conway.Conformance.Epoch._.bcur
d_bcur_4906 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_4906 v0 = coe d_bcur_4852 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.bprev
d_bprev_4908 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_4908 v0 = coe d_bprev_4850 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.epochState
d_epochState_4910 :: T_NewEpochState_4834 -> T_EpochState_4808
d_epochState_4910 v0 = coe d_epochState_4854 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.lastEpoch
d_lastEpoch_4912 :: T_NewEpochState_4834 -> AgdaAny
d_lastEpoch_4912 v0 = coe d_lastEpoch_4848 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.pd
d_pd_4914 ::
  T_NewEpochState_4834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_4914 v0 = coe d_pd_4858 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.ru
d_ru_4916 ::
  T_NewEpochState_4834 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944
d_ru_4916 v0 = coe d_ru_4856 (coe v0)
-- Ledger.Conway.Conformance.Epoch.NewEpochStateToConf
d_NewEpochStateToConf_4918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateToConf_4918 ~v0 ~v1 = du_NewEpochStateToConf_4918
du_NewEpochStateToConf_4918 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_NewEpochStateToConf_4918
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
              (coe
                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                 (coe
                    MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                    (coe
                       MAlonzo.Code.Data.List.Base.du_length_268
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (4834 :: Integer) (11290226015743492707 :: Integer)
                                            "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                   (coe ("r" :: Data.Text.Text))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                      (coe
                                         (MAlonzo.RTE.QName
                                            (168 :: Integer) (11290226015743492707 :: Integer)
                                            "_.Epoch"
                                            (MAlonzo.RTE.Fixity
                                               MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (4834 :: Integer) (11290226015743492707 :: Integer)
                                               "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                      (coe ("r" :: Data.Text.Text))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (4444 :: Integer) (11290226015743492707 :: Integer)
                                               "Ledger.Conway.Conformance.Epoch._.BlocksMade"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (4834 :: Integer)
                                                  (11290226015743492707 :: Integer)
                                                  "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                         (coe ("r" :: Data.Text.Text))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (4444 :: Integer)
                                                  (11290226015743492707 :: Integer)
                                                  "Ledger.Conway.Conformance.Epoch._.BlocksMade"
                                                  (MAlonzo.RTE.Fixity
                                                     MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (4834 :: Integer)
                                                     (11290226015743492707 :: Integer)
                                                     "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                            (coe ("r" :: Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (4808 :: Integer)
                                                     (11290226015743492707 :: Integer)
                                                     "Ledger.Conway.Conformance.Epoch.EpochState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (4834 :: Integer)
                                                        (11290226015743492707 :: Integer)
                                                        "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                               (coe ("r" :: Data.Text.Text))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                  (coe
                                                     (MAlonzo.RTE.QName
                                                        (10 :: Integer)
                                                        (15412666033012224255 :: Integer)
                                                        "Agda.Builtin.Maybe.Maybe"
                                                        (MAlonzo.RTE.Fixity
                                                           MAlonzo.RTE.NonAssoc
                                                           MAlonzo.RTE.Unrelated)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (20 :: Integer)
                                                                 (10880583612240331187 :: Integer)
                                                                 "Agda.Primitive.lzero"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                              (coe
                                                                 (MAlonzo.RTE.QName
                                                                    (4462 :: Integer)
                                                                    (11290226015743492707 ::
                                                                       Integer)
                                                                    "Ledger.Conway.Conformance.Epoch._.RewardUpdate"
                                                                    (MAlonzo.RTE.Fixity
                                                                       MAlonzo.RTE.NonAssoc
                                                                       MAlonzo.RTE.Unrelated)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (4834 :: Integer)
                                                           (11290226015743492707 :: Integer)
                                                           "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                  (coe ("r" :: Data.Text.Text))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                     (coe
                                                        (MAlonzo.RTE.QName
                                                           (4832 :: Integer)
                                                           (11290226015743492707 :: Integer)
                                                           "Ledger.Conway.Conformance.Epoch.PoolDelegatedStake"
                                                           (MAlonzo.RTE.Fixity
                                                              MAlonzo.RTE.NonAssoc
                                                              MAlonzo.RTE.Unrelated)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                    (coe C_constructor_4860)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3302
                    (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3306
                       (coe v1))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3304
                          (coe v1))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                             (coe du_EpochStateToConf_4882)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3308
                                (coe v1)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3310 (coe v1))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3312
                                (coe v1)))))))))
-- Ledger.Conway.Conformance.Epoch.applyRUpd
d_applyRUpd_4938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  T_EpochState_4808 -> T_EpochState_4808
d_applyRUpd_4938 v0 ~v1 v2 v3 = du_applyRUpd_4938 v0 v2 v3
du_applyRUpd_4938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  T_EpochState_4808 -> T_EpochState_4808
du_applyRUpd_4938 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2660 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2458 v13 v14 v15 v16
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1602 v17 v18 v19
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1570 v20 v21 v22 v23
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_length_268
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (4808 :: Integer)
                                                                              (11290226015743492707 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Conformance.Epoch.EpochState"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                     (coe ("r" :: Data.Text.Text))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (28 :: Integer)
                                                                              (11290226015743492707 ::
                                                                                 Integer)
                                                                              "_.Acnt"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                           (coe
                                                                              (MAlonzo.RTE.QName
                                                                                 (4808 :: Integer)
                                                                                 (11290226015743492707 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Conformance.Epoch.EpochState"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                        (coe
                                                                           ("r" :: Data.Text.Text))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                           (coe
                                                                              (MAlonzo.RTE.QName
                                                                                 (4474 :: Integer)
                                                                                 (11290226015743492707 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Conformance.Epoch._.Snapshots"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (4808 ::
                                                                                       Integer)
                                                                                    (11290226015743492707 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Conformance.Epoch.EpochState"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe
                                                                              ("r"
                                                                               ::
                                                                               Data.Text.Text))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (3692 ::
                                                                                       Integer)
                                                                                    (11290226015743492707 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Conformance.Epoch._.LState"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (4808 ::
                                                                                          Integer)
                                                                                       (11290226015743492707 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Conformance.Epoch.EpochState"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                              (coe
                                                                                 ("r"
                                                                                  ::
                                                                                  Data.Text.Text))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (1988 ::
                                                                                          Integer)
                                                                                       (11290226015743492707 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Conformance.Epoch._.EnactState"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (4808 ::
                                                                                             Integer)
                                                                                          (11290226015743492707 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Conformance.Epoch.EpochState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                 (coe
                                                                                    ("r"
                                                                                     ::
                                                                                     Data.Text.Text))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (3766 ::
                                                                                             Integer)
                                                                                          (11290226015743492707 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Conformance.Epoch._.RatifyState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                      (coe
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4830)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                      (coe
                                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_268
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (170 :: Integer)
                                                                                    (1789989497608360366 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.PParams.Acnt"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe
                                                                              ("r"
                                                                               ::
                                                                               Data.Text.Text))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (6 :: Integer)
                                                                                    (14798748958053396954 ::
                                                                                       Integer)
                                                                                    "Ledger.Prelude.Base.Coin"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (170 ::
                                                                                          Integer)
                                                                                       (1789989497608360366 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Specification.PParams.Acnt"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                              (coe
                                                                                 ("r"
                                                                                  ::
                                                                                  Data.Text.Text))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (6 ::
                                                                                          Integer)
                                                                                       (14798748958053396954 ::
                                                                                          Integer)
                                                                                       "Ledger.Prelude.Base.Coin"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe
                                                                  MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                                  (coe v8)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2962
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_4992 (coe v0)
                                                                  (coe v1) (coe v22))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2964
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v4)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                            (coe
                                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Base.du_length_268
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (2646 ::
                                                                                             Integer)
                                                                                          (16262344046643431141 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Conformance.Ledger.LState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                 (coe
                                                                                    ("r"
                                                                                     ::
                                                                                     Data.Text.Text))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (2104 ::
                                                                                             Integer)
                                                                                          (16262344046643431141 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (2646 ::
                                                                                                Integer)
                                                                                             (16262344046643431141 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Conformance.Ledger.LState"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                    (coe
                                                                                       ("r"
                                                                                        ::
                                                                                        Data.Text.Text))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (2060 ::
                                                                                                Integer)
                                                                                             (16262344046643431141 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Conformance.Ledger._.GovState"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (2646 ::
                                                                                                   Integer)
                                                                                                (16262344046643431141 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Conformance.Ledger.LState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                       (coe
                                                                                          ("r"
                                                                                           ::
                                                                                           Data.Text.Text))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (2212 ::
                                                                                                   Integer)
                                                                                                (16262344046643431141 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Conformance.Ledger._.CertState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2660)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                  (coe
                                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                                        (coe
                                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (2440 ::
                                                                                                   Integer)
                                                                                                (18240141987391769988 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Utxo.UTxOState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                       (coe
                                                                                          ("r"
                                                                                           ::
                                                                                           Data.Text.Text))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (614 ::
                                                                                                   Integer)
                                                                                                (18240141987391769988 ::
                                                                                                   Integer)
                                                                                                "_.UTxO"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (2440 ::
                                                                                                      Integer)
                                                                                                   (18240141987391769988 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Utxo.UTxOState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                          (coe
                                                                                             ("r"
                                                                                              ::
                                                                                              Data.Text.Text))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (10 ::
                                                                                                      Integer)
                                                                                                   (14798748958053396954 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Prelude.Base.Fees"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (2440 ::
                                                                                                         Integer)
                                                                                                      (18240141987391769988 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Utxo.UTxOState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                             (coe
                                                                                                ("r"
                                                                                                 ::
                                                                                                 Data.Text.Text))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (2054 ::
                                                                                                         Integer)
                                                                                                      (18240141987391769988 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Utxo._.Deposits"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (2440 ::
                                                                                                            Integer)
                                                                                                         (18240141987391769988 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Utxo.UTxOState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                (coe
                                                                                                   ("r"
                                                                                                    ::
                                                                                                    Data.Text.Text))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (8 ::
                                                                                                            Integer)
                                                                                                         (14798748958053396954 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Prelude.Base.Donations"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2458)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v13)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Prelude.d_posPart_58
                                                                           (coe
                                                                              MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                                              (coe v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2966
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v15) (coe v16)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v11)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                     (coe
                                                                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                                           (coe
                                                                              MAlonzo.Code.Data.List.Base.du_length_268
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (1588 ::
                                                                                                      Integer)
                                                                                                   (9415815257714143971 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Conformance.Certs.CertState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                          (coe
                                                                                             ("r"
                                                                                              ::
                                                                                              Data.Text.Text))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (1552 ::
                                                                                                      Integer)
                                                                                                   (9415815257714143971 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Conformance.Certs.DState"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (1588 ::
                                                                                                         Integer)
                                                                                                      (9415815257714143971 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Conformance.Certs.CertState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                             (coe
                                                                                                ("r"
                                                                                                 ::
                                                                                                 Data.Text.Text))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (1318 ::
                                                                                                         Integer)
                                                                                                      (9415815257714143971 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Conformance.Certs.Certs.PState"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (1588 ::
                                                                                                            Integer)
                                                                                                         (9415815257714143971 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Conformance.Certs.CertState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                (coe
                                                                                                   ("r"
                                                                                                    ::
                                                                                                    Data.Text.Text))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (1572 ::
                                                                                                            Integer)
                                                                                                         (9415815257714143971 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Conformance.Certs.GState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1602)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                           (coe
                                                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.List.Base.du_length_268
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (1552 ::
                                                                                                            Integer)
                                                                                                         (9415815257714143971 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Conformance.Certs.DState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                (coe
                                                                                                   ("r"
                                                                                                    ::
                                                                                                    Data.Text.Text))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (970 ::
                                                                                                            Integer)
                                                                                                         (9415815257714143971 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Conformance.Certs._.VoteDelegs"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                      (coe
                                                                                                         (MAlonzo.RTE.QName
                                                                                                            (1552 ::
                                                                                                               Integer)
                                                                                                            (9415815257714143971 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Conway.Conformance.Certs.DState"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                   (coe
                                                                                                      ("r"
                                                                                                       ::
                                                                                                       Data.Text.Text))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                      (coe
                                                                                                         (MAlonzo.RTE.QName
                                                                                                            (182 ::
                                                                                                               Integer)
                                                                                                            (9254951203007797098 ::
                                                                                                               Integer)
                                                                                                            "abstract-set-theory.FiniteSetTheory._.Map"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.RightAssoc
                                                                                                               (MAlonzo.RTE.Related
                                                                                                                  (1.0 ::
                                                                                                                     Double)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                               (coe
                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                     (42 ::
                                                                                                                        Integer)
                                                                                                                     (9415815257714143971 ::
                                                                                                                        Integer)
                                                                                                                     "_.Credential"
                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                        (coe
                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                              (320 ::
                                                                                                                                 Integer)
                                                                                                                              (753823221557309123 ::
                                                                                                                                 Integer)
                                                                                                                              "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                 (coe
                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                       (1194 ::
                                                                                                                                          Integer)
                                                                                                                                       (7805089389717466778 ::
                                                                                                                                          Integer)
                                                                                                                                       "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                          (coe
                                                                                                                                             (1 ::
                                                                                                                                                Integer))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                           (coe
                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                 (26 ::
                                                                                                                                    Integer)
                                                                                                                                 (14321319370142338143 ::
                                                                                                                                    Integer)
                                                                                                                                 "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                    MAlonzo.RTE.Unrelated)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                       (coe
                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                             (206 ::
                                                                                                                                                Integer)
                                                                                                                                             (14321319370142338143 ::
                                                                                                                                                Integer)
                                                                                                                                             "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                (coe
                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                      (610 ::
                                                                                                                                                         Integer)
                                                                                                                                                      (7805089389717466778 ::
                                                                                                                                                         Integer)
                                                                                                                                                      "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                         (coe
                                                                                                                                                            (1 ::
                                                                                                                                                               Integer))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                              (coe
                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                    (210 ::
                                                                                                                                       Integer)
                                                                                                                                    (14321319370142338143 ::
                                                                                                                                       Integer)
                                                                                                                                    "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                       (coe
                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                             (610 ::
                                                                                                                                                Integer)
                                                                                                                                             (7805089389717466778 ::
                                                                                                                                                Integer)
                                                                                                                                             "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                (coe
                                                                                                                                                   (1 ::
                                                                                                                                                      Integer))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                  (coe
                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                        (192 ::
                                                                                                                           Integer)
                                                                                                                        (9415815257714143971 ::
                                                                                                                           Integer)
                                                                                                                        "_.THash"
                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                             (coe
                                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                         (coe
                                                                                                            (MAlonzo.RTE.QName
                                                                                                               (1552 ::
                                                                                                                  Integer)
                                                                                                               (9415815257714143971 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Conformance.Certs.DState"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                      (coe
                                                                                                         ("r"
                                                                                                          ::
                                                                                                          Data.Text.Text))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                         (coe
                                                                                                            (MAlonzo.RTE.QName
                                                                                                               (1336 ::
                                                                                                                  Integer)
                                                                                                               (9415815257714143971 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Conformance.Certs.Certs.Rewards"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                            (coe
                                                                                                               (MAlonzo.RTE.QName
                                                                                                                  (1552 ::
                                                                                                                     Integer)
                                                                                                                  (9415815257714143971 ::
                                                                                                                     Integer)
                                                                                                                  "Ledger.Conway.Conformance.Certs.DState"
                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                         (coe
                                                                                                            ("r"
                                                                                                             ::
                                                                                                             Data.Text.Text))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                            (coe
                                                                                                               (MAlonzo.RTE.QName
                                                                                                                  (1202 ::
                                                                                                                     Integer)
                                                                                                                  (9415815257714143971 ::
                                                                                                                     Integer)
                                                                                                                  "Ledger.Conway.Conformance.Certs.Certs.Deposits"
                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1570)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                                                                (coe
                                                                                                   v0))))
                                                                                       v22
                                                                                       (coe
                                                                                          du_regRU_4988
                                                                                          (coe v0)
                                                                                          (coe v1)
                                                                                          (coe
                                                                                             v22)))
                                                                                    (coe v23)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v18) (coe v19)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6) (coe v7)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.regRU
d_regRU_4988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_4988 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             v13 ~v14 ~v15 ~v16 ~v17 ~v18
  = du_regRU_4988 v0 v2 v13
du_regRU_4988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_4988 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2968
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_4990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_4990 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               v13 ~v14 ~v15 ~v16 ~v17 ~v18
  = du_unregRU_4990 v0 v2 v13
du_unregRU_4990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_4990 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2968
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_4992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872 ->
  Integer
d_unregRU''_4992 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 v13 ~v14 ~v15 ~v16 ~v17 ~v18
  = du_unregRU''_4992 v0 v2 v13
du_unregRU''_4992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_4992 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_4990 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_4996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_4996 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_4996 v0 v2
du_calculatePoolDelegatedStake_4996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_4996 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                  (coe v0)))))
      (coe du_sd_5006 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2992
            (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_5004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_5004 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_5004 v2
du_stakeCredentialsPerPool_5004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_5004 v0
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8315''185''691'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2990
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.sd
d_sd_5006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_5006 v0 ~v1 v2 = du_sd_5006 v0 v2
du_sd_5006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_5006 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_584
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1258
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8728''691'__1278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                     (coe v0))))
            (coe du_stakeCredentialsPerPool_5004 (coe v1))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2988
                  (coe v1)))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__5052 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__5052
  = C_EPOCH_5174 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80
                 MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2634
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_5056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_5056 ~v0 ~v1 v2 = du_certState_5056 v2
du_certState_5056 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
du_certState_5056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
      (coe d_'46'generalizedField'45'ls_57203 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.govSt
d_govSt_5058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_5058 ~v0 ~v1 v2 = du_govSt_5058 v2
du_govSt_5058 ::
  T_GeneralizeTel_57219 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_5058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2656
      (coe d_'46'generalizedField'45'ls_57203 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_5060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_5060 ~v0 ~v1 v2 = du_utxoSt_5060 v2
du_utxoSt_5060 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
du_utxoSt_5060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2654
      (coe d_'46'generalizedField'45'ls_57203 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_5064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1552
d_dState_5064 ~v0 ~v1 v2 = du_dState_5064 v2
du_dState_5064 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1552
du_dState_5064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
         (coe d_'46'generalizedField'45'ls_57203 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.gState
d_gState_5066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572
d_gState_5066 ~v0 ~v1 v2 = du_gState_5066 v2
du_gState_5066 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572
du_gState_5066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
         (coe d_'46'generalizedField'45'ls_57203 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_5068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400
d_pState_5068 ~v0 ~v1 v2 = du_pState_5068 v2
du_pState_5068 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400
du_pState_5068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1598
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
         (coe d_'46'generalizedField'45'ls_57203 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.es
d_es_5074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_5074 ~v0 ~v1 v2 = du_es_5074 v2
du_es_5074 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
du_es_5074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1880
      (coe d_'46'generalizedField'45'fut_57205 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.removed
d_removed_5076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_5076 ~v0 ~v1 v2 = du_removed_5076 v2
du_removed_5076 ::
  T_GeneralizeTel_57219 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_5076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1882
      (coe d_'46'generalizedField'45'fut_57205 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_5146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_5146 ~v0 ~v1 v2 = du_ccHotKeys_5146 v2
du_ccHotKeys_5146 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_5146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_5150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_5150 ~v0 ~v1 v2 = du_dreps_5150 v2
du_dreps_5150 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_5150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1580
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.rewards
d_rewards_5158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_5158 ~v0 ~v1 v2 = du_rewards_5158 v2
du_rewards_5158 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_5158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.stakeDelegs
d_stakeDelegs_5160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_5160 ~v0 ~v1 v2 = du_stakeDelegs_5160 v2
du_stakeDelegs_5160 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_5160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1564
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.voteDelegs
d_voteDelegs_5162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_5162 ~v0 ~v1 v2 = du_voteDelegs_5162 v2
du_voteDelegs_5162 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_5162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1562
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_5168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_5168 ~v0 ~v1 v2 = du_ccHotKeys_5168 v2
du_ccHotKeys_5168 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_5168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_5172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_5172 ~v0 ~v1 v2 = du_dreps_5172 v2
du_dreps_5172 ::
  T_GeneralizeTel_57219 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_5172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1580
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
            (coe d_'46'generalizedField'45'ls_57203 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5176 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5176
  = C_NEWEPOCH'45'New_5190 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_5198 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_5210 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_57203 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
d_'46'generalizedField'45'ls_57203 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_57205 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
d_'46'generalizedField'45'fut_57205 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_57207 ::
  T_GeneralizeTel_57219 -> AgdaAny
d_'46'generalizedField'45'e_57207 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_57209 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_'46'generalizedField'45'acnt_57209 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_57211 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
d_'46'generalizedField'45'ss''_57211 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_57213 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
d_'46'generalizedField'45'fut''_57213 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_57215 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
d_'46'generalizedField'45'ss_57215 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_57217 ::
  T_GeneralizeTel_57219 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_'46'generalizedField'45'es'8320'_57217 v0
  = case coe v0 of
      C_mkGeneralizeTel_57221 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_57219 a0 a1 = ()
data T_GeneralizeTel_57219
  = C_mkGeneralizeTel_57221 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
                            AgdaAny MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1872
                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3038
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
