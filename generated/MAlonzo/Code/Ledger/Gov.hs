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

module MAlonzo.Code.Ledger.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Gov._._+ᵉ_
d__'43''7497'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__14 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__210
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
            (coe v1)))
-- Ledger.Gov._.DecEq-Credential
d_DecEq'45'Credential_56 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_56 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_56 v2 v3
du_DecEq'45'Credential_56 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_56 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Gov._.Epoch
d_Epoch_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_110 = erased
-- Ledger.Gov._.PParams
d_PParams_158 a0 = ()
-- Ledger.Gov._.RwdAddr
d_RwdAddr_180 a0 a1 a2 a3 = ()
-- Ledger.Gov._.ScriptHash
d_ScriptHash_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_194 = erased
-- Ledger.Gov._.TxId
d_TxId_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxId_258 = erased
-- Ledger.Gov._.preoEpoch
d_preoEpoch_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_344 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
            (coe v1)))
-- Ledger.Gov._.pvCanFollow
d_pvCanFollow_348 a0 a1 a2 = ()
-- Ledger.Gov._.GovAction
d_GovAction_674 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_676 = erased
-- Ledger.Gov._.GovActionState
d_GovActionState_678 a0 = ()
-- Ledger.Gov._.GovProposal
d_GovProposal_680 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_684 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_NeedsHash_690 = erased
-- Ledger.Gov._.Vote
d_Vote_706 a0 = ()
-- Ledger.Gov._.Voter
d_Voter_708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_708 = erased
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_actionWellFormed_714 = erased
-- Ledger.Gov._.EnactState
d_EnactState_828 a0 = ()
-- Ledger.Gov._.canVote
d_canVote_920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> ()
d_canVote_920 = erased
-- Ledger.Gov.GovState
d_GovState_1000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_1000 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_1002 a0 = ()
data T_GovEnv_1002
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 AgdaAny AgdaAny
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_240
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_824
-- Ledger.Gov.GovEnv.txid
d_txid_1014 :: T_GovEnv_1002 -> AgdaAny
d_txid_1014 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_1016 :: T_GovEnv_1002 -> AgdaAny
d_epoch_1016 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_1018 ::
  T_GovEnv_1002 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_1018 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.ppolicy
d_ppolicy_1020 :: T_GovEnv_1002 -> Maybe AgdaAny
d_ppolicy_1020 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.enactState
d_enactState_1022 ::
  T_GovEnv_1002 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_1022 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1024 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__1026 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__1026
  = C_GOV'45'Vote_1546 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_1636 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1028 = erased
-- Ledger.Gov.govActionPriority
d_govActionPriority_1056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> Integer
d_govActionPriority_1056 ~v0 v1 = du_govActionPriority_1056 v1
du_govActionPriority_1056 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> Integer
du_govActionPriority_1056 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v1 v2 v3
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v1 v2
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v1
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v1
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v1
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.insertGovAction
d_insertGovAction_1058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_1058 ~v0 v1 v2 = du_insertGovAction_1058 v1 v2
du_insertGovAction_1058 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_1058 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                           (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Dec_98)
                           (coe
                              MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                              (\ v8 v9 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v8)
                                      (coe v9)))
                              (coe
                                 du_govActionPriority_1056
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v5)))
                              (coe
                                 du_govActionPriority_1056
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v7))))
                           (coe
                              MAlonzo.Code.Level.C_lift_20
                              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_1058 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.addVote
d_addVote_1072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_1072 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_1086 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Gov._.modifyVotes
d_modifyVotes_1086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_1086 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_1086 v0 v2 v3 v4 v5
du_modifyVotes_1086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_1086 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5329
         (coe
            MAlonzo.Code.Interface.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_906
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796)
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_786
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_786
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_792
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Gov.mkGovStatePair
d_mkGovStatePair_1096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_1096 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_1096 v1 v2 v3 v4 v5
du_mkGovStatePair_1096 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_1096 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5329
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Gov.addAction
d_addAction_1110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_1110 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_1110 v1 v2 v3 v4 v5 v6
du_addAction_1110 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_1110 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_1058 (coe v0)
      (coe
         du_mkGovStatePair_1096 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Gov.validHFAction
d_validHFAction_1124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> ()
d_validHFAction_1124 = erased
-- Ledger.Gov.getAidPairsList
d_getAidPairsList_1142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_1142 ~v0 v1 = du_getAidPairsList_1142 v1
du_getAidPairsList_1142 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_1142 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_32
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
              () erased
              (\ v2 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_852
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_792
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Gov._connects_to_
d__connects_to__1154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__1154 = erased
-- Ledger.Gov.enactable
d_enactable_1170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_1170 = erased
-- Ledger.Gov.allEnactable
d_allEnactable_1188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_1188 = erased
-- Ledger.Gov.hasParentE
d_hasParentE_1194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_hasParentE_1194 = erased
-- Ledger.Gov.hasParent
d_hasParent_1208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> ()
d_hasParent_1208 = erased
-- Ledger.Gov.hasParentE?
d_hasParentE'63'_1248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_1248 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_864 (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                (coe v5) (coe v2)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent?
d_hasParent'63'_1282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_1282 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_852 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
                (coe d_hasParentE'63'_1248 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) v6))
                   (coe v2))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent'
d_hasParent''_1318 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_1318 = C_HasParent''_1328 AgdaAny
-- Ledger.Gov.hasParent?'
d_hasParent'63'''_1338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1338 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
         (coe C_HasParent''_1328)
         (coe
            d_hasParent'63'_1282 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_1350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_1350 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
             (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
             (coe v2) (coe v3)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                          (coe (\ v8 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_1350 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_1350 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_1374 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_64
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_1350 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_1392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_1392 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_134
               (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3)))))
      (d_any'63''45'connecting'45'subperm_1374
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_1404 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_1392
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.enactable?
d_enactable'63'_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_1414 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_864 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_1056
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe v2))
                       (d_'8707''63''45'connecting'45'subset_1404
                          (coe v0) (coe v4) (coe v7) (coe v2))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.allEnactable?
d_allEnactable'63'_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_1450 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_512
      (coe
         d_enactable'63'_1414 (coe v0) (coe v1)
         (coe du_getAidPairsList_1142 (coe v2)))
      (coe v2)
-- Ledger.Gov.allEnactable'
d_allEnactable''_1458 a0 a1 a2 = ()
newtype T_allEnactable''_1458
  = C_AllEnactable''_1464 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Gov.allEnactable?'
d_allEnactable'63'''_1470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_1470 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
         (coe C_AllEnactable''_1464)
         (coe d_allEnactable'63'_1450 (coe v0) (coe v1) (coe v2)))
-- Ledger.Gov.maxAllEnactable
d_maxAllEnactable_1476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_1476 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_maxsublists'8871'P_958
      (coe d_allEnactable'63'_1450 (coe v0) (coe v1))
-- Ledger.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_1486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_1486 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
         (d_allEnactable'63'_1450 (coe v0) (coe v1)) v3
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
               (\ v5 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                    (coe MAlonzo.Code.Data.List.Base.du_length_304 v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_maxlen_218
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties.du_sublists'8871'P_952
                          (coe d_allEnactable'63'_1450 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_740
                  (coe d_allEnactable'63'_1450 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_1506 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_1506 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_1506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'maxlen'45''8804'_244
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_740
         (coe d_allEnactable'63'_1450 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_524
         (d_allEnactable'63'_1450 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Gov._.enactState
d_enactState_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_1534 ~v0 v1 ~v2 ~v3 = du_enactState_1534 v1
du_enactState_1534 ::
  T_GeneralizeTel_36693 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_1534 v0
  = coe d_enactState_1022 (coe d_'46'generalizedField'45'Γ_36681 v0)
-- Ledger.Gov._.epoch
d_epoch_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_epoch_1536 ~v0 v1 ~v2 ~v3 = du_epoch_1536 v1
du_epoch_1536 :: T_GeneralizeTel_36693 -> AgdaAny
du_epoch_1536 v0
  = coe d_epoch_1016 (coe d_'46'generalizedField'45'Γ_36681 v0)
-- Ledger.Gov._.pparams
d_pparams_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_1538 ~v0 v1 ~v2 ~v3 = du_pparams_1538 v1
du_pparams_1538 ::
  T_GeneralizeTel_36693 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_1538 v0
  = coe d_pparams_1018 (coe d_'46'generalizedField'45'Γ_36681 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  Maybe AgdaAny
d_ppolicy_1540 ~v0 v1 ~v2 ~v3 = du_ppolicy_1540 v1
du_ppolicy_1540 :: T_GeneralizeTel_36693 -> Maybe AgdaAny
du_ppolicy_1540 v0
  = coe d_ppolicy_1020 (coe d_'46'generalizedField'45'Γ_36681 v0)
-- Ledger.Gov._.txid
d_txid_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_txid_1542 ~v0 v1 ~v2 ~v3 = du_txid_1542 v1
du_txid_1542 :: T_GeneralizeTel_36693 -> AgdaAny
du_txid_1542 v0
  = coe d_txid_1014 (coe d_'46'generalizedField'45'Γ_36681 v0)
-- Ledger.Gov._.enactState
d_enactState_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_enactState_1552 ~v0 v1 ~v2 = du_enactState_1552 v1
du_enactState_1552 ::
  T_GeneralizeTel_39219 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
du_enactState_1552 v0
  = coe d_enactState_1022 (coe d_'46'generalizedField'45'Γ_39203 v0)
-- Ledger.Gov._.epoch
d_epoch_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> AgdaAny
d_epoch_1554 ~v0 v1 ~v2 = du_epoch_1554 v1
du_epoch_1554 :: T_GeneralizeTel_39219 -> AgdaAny
du_epoch_1554 v0
  = coe d_epoch_1016 (coe d_'46'generalizedField'45'Γ_39203 v0)
-- Ledger.Gov._.pparams
d_pparams_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_1556 ~v0 v1 ~v2 = du_pparams_1556 v1
du_pparams_1556 ::
  T_GeneralizeTel_39219 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
du_pparams_1556 v0
  = coe d_pparams_1018 (coe d_'46'generalizedField'45'Γ_39203 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> Maybe AgdaAny
d_ppolicy_1558 ~v0 v1 ~v2 = du_ppolicy_1558 v1
du_ppolicy_1558 :: T_GeneralizeTel_39219 -> Maybe AgdaAny
du_ppolicy_1558 v0
  = coe d_ppolicy_1020 (coe d_'46'generalizedField'45'Γ_39203 v0)
-- Ledger.Gov._.txid
d_txid_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> AgdaAny
d_txid_1560 ~v0 v1 ~v2 = du_txid_1560 v1
du_txid_1560 :: T_GeneralizeTel_39219 -> AgdaAny
du_txid_1560 v0
  = coe d_txid_1014 (coe d_'46'generalizedField'45'Γ_39203 v0)
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> Integer
d_govActionDeposit_1586 ~v0 v1 ~v2 = du_govActionDeposit_1586 v1
du_govActionDeposit_1586 :: T_GeneralizeTel_39219 -> Integer
du_govActionDeposit_1586 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352
      (coe d_pparams_1018 (coe d_'46'generalizedField'45'Γ_39203 v0))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> Integer
d_govActionLifetime_1588 ~v0 v1 ~v2 = du_govActionLifetime_1588 v1
du_govActionLifetime_1588 :: T_GeneralizeTel_39219 -> Integer
du_govActionLifetime_1588 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_350
      (coe d_pparams_1018 (coe d_'46'generalizedField'45'Γ_39203 v0))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_36681 ::
  T_GeneralizeTel_36693 -> T_GovEnv_1002
d_'46'generalizedField'45'Γ_36681 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_36683 ::
  T_GeneralizeTel_36693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_36683
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_36685 ::
  T_GeneralizeTel_36693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_36685
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_36687 ::
  T_GeneralizeTel_36693 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_'46'generalizedField'45'v_36687 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_36689 ::
  T_GeneralizeTel_36693 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_36689 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_36691 ::
  T_GeneralizeTel_36693 -> Integer
d_'46'generalizedField'45'k_36691 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_36693 a0 = ()
data T_GeneralizeTel_36693
  = C_mkGeneralizeTel_36695 T_GovEnv_1002
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_39203 ::
  T_GeneralizeTel_39219 -> T_GovEnv_1002
d_'46'generalizedField'45'Γ_39203 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_39205 ::
  T_GeneralizeTel_39219 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_39205
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_39207 ::
  T_GeneralizeTel_39219 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_'46'generalizedField'45'a_39207 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-p
d_'46'generalizedField'45'p_39209 ::
  T_GeneralizeTel_39219 -> Maybe AgdaAny
d_'46'generalizedField'45'p_39209 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_39211 ::
  T_GeneralizeTel_39219 -> Integer
d_'46'generalizedField'45'd_39211 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_39213 ::
  T_GeneralizeTel_39219 -> AgdaAny
d_'46'generalizedField'45'prev_39213
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_39215 ::
  T_GeneralizeTel_39219 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_39215 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_39217 ::
  T_GeneralizeTel_39219 -> Integer
d_'46'generalizedField'45'k_39217 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_39219 a0 = ()
data T_GeneralizeTel_39219
  = C_mkGeneralizeTel_39221 T_GovEnv_1002
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
