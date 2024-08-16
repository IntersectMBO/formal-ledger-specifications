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

module MAlonzo.Code.Ledger.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Properties.Ext
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
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
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_64 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_112 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))
-- _.Epoch
d_Epoch_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_188 = erased
-- _.GovAction
d_GovAction_204 a0 = ()
-- _.GovActionID
d_GovActionID_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_208 = erased
-- _.GovActionState
d_GovActionState_210 a0 = ()
-- _.GovRole
d_GovRole_218 a0 = ()
-- _.NeedsHash
d_NeedsHash_260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 -> ()
d_NeedsHash_260 = erased
-- _.PParamGroup
d_PParamGroup_290 a0 = ()
-- _.PParams
d_PParams_292 a0 = ()
-- _.UpdateT
d_UpdateT_296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_296 = erased
-- _.VDeleg
d_VDeleg_418 a0 = ()
-- _.preoEpoch
d_preoEpoch_582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_582 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1566 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1582 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1584 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1632 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1642 = erased
-- Ledger.Ratify._
d___1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1644 ~v0 = du___1644
du___1644 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1644
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1648 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1648 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1648 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1648 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_624 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> AgdaAny
d_'8739'_'8741'_'8739'_1660 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1660 v2 v3
du_'8739'_'8741'_'8739'_1660 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> AgdaAny
du_'8739'_'8741'_'8739'_1660 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_624 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1670 ~v0 = du_vote_1670
du_vote_1670 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1670 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1672 ~v0 = du_defer_1672
du_defer_1672 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1672
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1674 ~v0 v1 = du_maxThreshold_1674 v1
du_maxThreshold_1674 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1674 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1682)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_216 v0))
-- Ledger.Ratify._.comb
d_comb_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1682 ~v0 ~v1 v2 v3 = du_comb_1682 v2 v3
du_comb_1682 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1682 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'8852'__322 (coe v2) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.─
d_'9472'_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1692 ~v0 = du_'9472'_1692
du_'9472'_1692 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1692 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1694 ~v0 = du_'10003''8224'_1694
du_'10003''8224'_1694 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1694 = coe du_vote_1670 (coe du_defer_1672)
-- Ledger.Ratify.threshold
d_threshold_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1696 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_654
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1648 (coe du_'9472'_1692)
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P1_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_Q1_218
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_656 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1660 (coe du_'9472'_1692)
             (coe du_P'47'Q2a'47'b_1802 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_658 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1648 (coe du_'10003'_1800 (coe v2))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P3_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_660 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1648 (coe du_'10003'_1800 (coe v2))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P4_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_Q4_224
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_662 v4
        -> coe
             du_'8739'_'8741'_'8739'_1660 (coe du_'10003'_1800 (coe v2))
             (coe du_P'47'Q5_1808 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_664 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1648 (coe du_'10003'_1800 (coe v2))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P6_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_666
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1648 (coe du_'10003''8224'_1694)
             (coe du_'10003''8224'_1694) (coe du_'10003''8224'_1694)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1800 ~v0 ~v1 v2 = du_'10003'_1800 v2
du_'10003'_1800 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1800 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1694) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1802 ~v0 v1 v2 = du_P'47'Q2a'47'b_1802 v1 v2
du_P'47'Q2a'47'b_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1802 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P2a_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_Q2a_220
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P2b_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_Q2b_222
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1806 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1806 v1 v3
du_pparamThreshold_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1806 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_154
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P5a_196
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_156
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P5b_198
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_158
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P5c_200
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_160
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_P5d_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1692)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_162
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1692)
             (coe
                du_vote_1670
                (MAlonzo.Code.Ledger.PParams.d_Q5e_226
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1808 v0 v1 ~v2 v3 = du_P'47'Q5_1808 v0 v1 v3
du_P'47'Q5_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1808 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1674
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1806 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2084 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1674
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1806 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2084 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> ()
d_canVote_1816 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1824 a0 = ()
newtype T_StakeDistrs_1824
  = C_StakeDistrs'46'constructor_11043 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1828 ::
  T_StakeDistrs_1824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1828 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11043 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1830 a0 = ()
data T_RatifyEnv_1830
  = C_RatifyEnv'46'constructor_11129 T_StakeDistrs_1824 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1842 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
d_stakeDistrs_1842 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11129 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1844 :: T_RatifyEnv_1830 -> AgdaAny
d_currentEpoch_1844 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11129 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1846 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1846 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11129 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1848 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1848 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11129 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1850 :: T_RatifyEnv_1830 -> Integer
d_treasury_1850 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11129 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1852 a0 = ()
data T_RatifyState_1852
  = C_'10214'_'44'_'44'_'10215''691'_1866 MAlonzo.Code.Ledger.Enact.T_EnactState_788
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1860 ::
  T_RatifyState_1852 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_es_1860 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1866 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1862 ::
  T_RatifyState_1852 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1862 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1866 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1864 :: T_RatifyState_1852 -> Bool
d_delay_1864 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1866 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1868 = erased
-- Ledger.Ratify.govRole
d_govRole_1870 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622
d_govRole_1870 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_636 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_638
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_640
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634 -> ()
d_IsCC_1874 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634 -> ()
d_IsDRep_1876 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634 -> ()
d_IsSPO_1878 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1886 ~v0 = du_coinThreshold_1886
du_coinThreshold_1886 :: Integer
du_coinThreshold_1886 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1888 ~v0 = du_rankThreshold_1888
du_rankThreshold_1888 :: Integer
du_rankThreshold_1888 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1890 ~v0 v1 v2
  = du_mostStakeDRepDist_1890 v1 v2
du_mostStakeDRepDist_1890 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1890 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1146 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1900 ~v0 v1
  = du_mostStakeDRepDist'45'0_1900 v1
du_mostStakeDRepDist'45'0_1900 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1900 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v1 v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                          (coe
                             (\ v3 ->
                                coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                     (coe (0 :: Integer)) (coe v3)))))
                       (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe v1))
                 v2)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532)
                    (coe du_mostStakeDRepDist_1890 (coe v0) (coe (0 :: Integer))) v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                  (coe (0 :: Integer)) (coe v3)))))
                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe v1))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26) (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-∅
d_mostStakeDRepDist'45''8709'_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1908 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1922 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1950 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1950 v0 v1 v2
du_'8707'topNDRepDist_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1950 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
            (coe
               (\ v3 ->
                  MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_174
                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                erased erased erased
                                (coe
                                   MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                              (\ v5 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                   (coe v3))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                    (coe v3) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                       (coe v3) (coe v4))))))))
                                (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                    (coe v1)))
            (coe
               MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
               (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
               (d_mostStakeDRepDist'45''8709'_1908 (coe v0) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                  (coe
                     (\ v3 ->
                        MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                          (coe
                             MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      erased erased erased
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                         (coe
                                            (\ v4 ->
                                               coe
                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                    (\ v5 ->
                                                       coe
                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                         (coe v3))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                          (coe v3) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                             (coe v3) (coe v4))))))))
                                      (\ v4 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                          (coe v1)))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
                     (d_mostStakeDRepDist'45''8709'_1908 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_174
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                           (coe
                                              addInt (coe (1 :: Integer))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                    (coe
                                                       (\ v5 ->
                                                          MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                        erased erased erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                                                           (coe
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                      (\ v7 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                           (coe v5))
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v6))
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                               (coe
                                                                                                  v5)
                                                                                               (coe
                                                                                                  v6))))))))
                                                                        (\ v6 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v6))))))
                                                            (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                       (coe
                                                          MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                       erased
                                                       (d_mostStakeDRepDist'45''8709'_1908
                                                          (coe v0) (coe v2)))))))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                            (coe
                                               addInt (coe (1 :: Integer))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                     (coe
                                                        (\ v4 ->
                                                           MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      erased erased
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         erased erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                       (\ v6 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                            (coe
                                                                                               v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                v5))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))))))))
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v5))))))
                                                             (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                        erased
                                                        (d_mostStakeDRepDist'45''8709'_1908
                                                           (coe v0) (coe v2))))))
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                            (coe
                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                               (coe
                                                  addInt (coe (1 :: Integer))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                        (coe
                                                           (\ v4 ->
                                                              MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                         (coe
                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         erased erased
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                            erased erased erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                          (\ v6 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                               (coe
                                                                                                  v4))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                   (coe
                                                                                                      v4)
                                                                                                   (coe
                                                                                                      v5))))))))
                                                                            (\ v5 ->
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe v5))))))
                                                                (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                           (coe
                                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                           erased
                                                           (d_mostStakeDRepDist'45''8709'_1908
                                                              (coe v0) (coe v2))))))
                                               (coe v3))))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1976 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2)))
                 (coe v1))
              (MAlonzo.Code.Data.Nat.Properties.d__'62''63'__2906
                 (coe v1) (coe (0 :: Integer))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                  -> if coe v6
                       then case coe v4 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                -> if coe v8
                                     then coe
                                            seq (coe v9)
                                            (coe
                                               seq (coe v7)
                                               (coe
                                                  du_mostStakeDRepDist_1890 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1950 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1824 -> T_StakeDistrs_1824
d_restrictedDists_1988 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1988 v3
du_restrictedDists_1988 :: T_StakeDistrs_1824 -> T_StakeDistrs_1824
du_restrictedDists_1988 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_2002 ::
  T_StakeDistrs_1824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2002 v0 = coe d_stakeDistr_1828 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2008 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_636
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_624))
         (coe
            du_actualCCVotes_2136 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
         (coe du_actualPDRepVotes_2144 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
            (coe du_actualDRepVotes_2146 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2148 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2026 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2026 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2026 v0
du_ccHotKeys_2026 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2026 v0 = coe d_ccHotKeys_1848 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2028 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2028 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2028 v0
du_currentEpoch_2028 :: T_RatifyEnv_1830 -> AgdaAny
du_currentEpoch_2028 v0 = coe d_currentEpoch_1844 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2030 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2030 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2030 v0
du_dreps_2030 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2030 v0 = coe d_dreps_1846 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2032 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1824
d_stakeDistrs_2032 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2032 v0
du_stakeDistrs_2032 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
du_stakeDistrs_2032 v0 = coe d_stakeDistrs_1842 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2034 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2034 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2034 v0
du_treasury_2034 :: T_RatifyEnv_1830 -> Integer
du_treasury_2034 v0 = coe d_treasury_1850 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2096 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2096 v5 v6
du_roleVotes_2096 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2096 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_636))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1130
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2104 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2104 v0 v1
du_activeDReps_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2104 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_538
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1130
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1844 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                    (d_currentEpoch_1844 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))))
                 (coe d_currentEpoch_1844 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1846 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634]
d_spos_2110 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2110 v1
du_spos_2110 ::
  T_RatifyEnv_1830 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634]
du_spos_2110 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760))
           (coe d_govRole_1870 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
         (coe d_stakeDistr_1828 (coe d_stakeDistrs_1842 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2112 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2112 v0 v1 v6
du_getCCHotCred_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2112 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1844 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
                              (d_currentEpoch_1844 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444
                                    (coe v0))))
                           (coe d_currentEpoch_1844 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1848 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_192
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                    (coe d_ccHotKeys_1848 (coe v1)))))) in
              coe
                (case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                     -> case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                            -> case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                                 _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_686
d_actualCCVote_2122 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2122 v0 v1 v5 v6 v7
du_actualCCVote_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_686
du_actualCCVote_2122 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2112 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_624) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_624) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_692)
-- Ledger.Ratify._.activeCC
d_activeCC_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeCC_2132 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_2132 v0 v1 v6
du_activeCC_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeCC_2132 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_2112 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2136 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2136 v0 v1 v2 v3 v5
du_actualCCVotes_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2136 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                          (coe du_activeCC_2132 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1074
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_2122 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_538
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2144 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2144 v0 v6
du_actualPDRepVotes_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2144 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_638)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_692)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_640)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_654
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_638)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_692)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_640)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_688)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2146 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2146 v0 v1 v5
du_actualDRepVotes_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2146 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
      (coe
         du_roleVotes_2096 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_636
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626))
            (coe du_activeDReps_2104 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2148 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2148 v0 v1 v5 v6
du_actualSPOVotes_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2148 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
              (coe
                 du_roleVotes_2096 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_2110 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_692)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_660 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
                (coe
                   du_roleVotes_2096 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_2110 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2150 ~v0 v1 v2 = du__'47''8320'__2150 v1 v2
du__'47''8320'__2150 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2150 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2158 ~v0 v1 v2 v3 = du_getStakeDist_2158 v1 v2 v3
du_getStakeDist_2158 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2158 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_624
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760))
                     (coe d_govRole_1870 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1138
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760))
                  (coe d_govRole_1870 (coe v3)) (coe v0))
             (d_stakeDistr_1828 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1138
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760))
                  (coe d_govRole_1870 (coe v3)) (coe v0))
             (d_stakeDistr_1828 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2168 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2150
      (coe
         d_acceptedStake_2184 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2186 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2182 ~v0 v1 v2 v3 ~v4 = du_dist_2182 v1 v2 v3
du_dist_2182 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2182 v0 v1 v2
  = coe du_getStakeDist_2158 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2184 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
         (coe du_dist_2182 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1600
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_762))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_688)))
-- Ledger.Ratify._.totalStake
d_totalStake_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634] ->
  T_StakeDistrs_1824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2186 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
         (coe du_dist_2182 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1584
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_762))
               (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_688))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_690))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 -> ()
d_acceptedBy_2192 = erased
-- Ledger.Ratify.accepted
d_accepted_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 -> ()
d_accepted_2286 = erased
-- Ledger.Ratify.expired
d_expired_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 -> ()
d_expired_2294 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_788 -> ()
d_verifyPrev_2302 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 -> Bool
d_delayingAction_2324 ~v0 v1 = du_delayingAction_2324 v1
du_delayingAction_2324 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 -> Bool
du_delayingAction_2324 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_654
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_656 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_658 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_660 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_662 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_664 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_666
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_788 -> Bool -> ()
d_delayed_2328 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  T_RatifyState_1852 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2338 = erased
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2354 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2354 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2354 v0
du_ccHotKeys_2354 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2354 v0 = coe d_ccHotKeys_1848 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2356 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  AgdaAny
d_currentEpoch_2356 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2356 v0
du_currentEpoch_2356 :: T_RatifyEnv_1830 -> AgdaAny
du_currentEpoch_2356 v0 = coe d_currentEpoch_1844 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2358 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2358 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2358 v0
du_dreps_2358 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2358 v0 = coe d_dreps_1846 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2360 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  T_StakeDistrs_1824
d_stakeDistrs_2360 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2360 v0
du_stakeDistrs_2360 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
du_stakeDistrs_2360 v0 = coe d_stakeDistrs_1842 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2362 ::
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  Integer
d_treasury_2362 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2362 v0
du_treasury_2362 :: T_RatifyEnv_1830 -> Integer
du_treasury_2362 v0 = coe d_treasury_1850 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2384 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_654
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_656 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_658 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_802 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_660 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_804 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_662 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_664 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_666
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2438 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe d_verifyPrev'63'_2384 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950) (coe v4)
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Ratify.Is-nothing?
d_Is'45'nothing'63'_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2454 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2454 v2
du_Is'45'nothing'63'_2454 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2454 v0
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_dec_254
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26) in
       coe (coe (\ v2 -> v1)))
      (coe v0)
-- Ledger.Ratify.acceptedBy?
d_acceptedBy'63'_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_622 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2470 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1696 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v2)))
               (coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                  () erased
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2168 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_538
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
               (coe
                  d_actualVotes_2008 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_750 (coe v3))))
            (coe d_stakeDistrs_1842 (coe v1))
            (coe
               d_actualVotes_2008 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_750 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_760)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_624))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_192
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_334
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2454
               (coe
                  d_threshold_1696 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_806 (coe v2)))
                  (coe
                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                     () erased
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_800 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_756 (coe v3))
                  v4))))
-- Ledger.Ratify.accepted?
d_accepted'63'_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2482 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         d_acceptedBy'63'_2470 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_624))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe
            d_acceptedBy'63'_2470 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_626))
         (coe
            d_acceptedBy'63'_2470 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_628)))
-- Ledger.Ratify.expired?
d_expired'63'_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_738 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2498 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_754 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_754 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2514 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2514
  = C_RATIFY'45'Accept_2554 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2580 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2606 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2530 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2530 v1
du_ccHotKeys_2530 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2530 v0 = coe d_ccHotKeys_1848 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 -> AgdaAny
d_currentEpoch_2532 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2532 v1
du_currentEpoch_2532 :: T_RatifyEnv_1830 -> AgdaAny
du_currentEpoch_2532 v0 = coe d_currentEpoch_1844 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2534 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2534 v1
du_dreps_2534 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2534 v0 = coe d_dreps_1846 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 -> T_StakeDistrs_1824
d_stakeDistrs_2536 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2536 v1
du_stakeDistrs_2536 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
du_stakeDistrs_2536 v0 = coe d_stakeDistrs_1842 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 -> Integer
d_treasury_2538 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2538 v1
du_treasury_2538 :: T_RatifyEnv_1830 -> Integer
du_treasury_2538 v0 = coe d_treasury_1850 (coe v0)
-- Ledger.Ratify._.action
d_action_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652
d_action_2544 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2544 v5
du_action_2544 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_652
du_action_2544 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_756
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2568 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2568 v1
du_ccHotKeys_2568 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2568 v0 = coe d_ccHotKeys_1848 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2570 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2570 v1
du_currentEpoch_2570 :: T_RatifyEnv_1830 -> AgdaAny
du_currentEpoch_2570 v0 = coe d_currentEpoch_1844 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2572 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2572 v1
du_dreps_2572 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2572 v0 = coe d_dreps_1846 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1824
d_stakeDistrs_2574 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2574 v1
du_stakeDistrs_2574 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
du_stakeDistrs_2574 v0 = coe d_stakeDistrs_1842 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2576 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2576 v1
du_treasury_2576 :: T_RatifyEnv_1830 -> Integer
du_treasury_2576 v0 = coe d_treasury_1850 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2594 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2594 v1
du_ccHotKeys_2594 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2594 v0 = coe d_ccHotKeys_1848 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2596 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2596 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2596 v1
du_currentEpoch_2596 :: T_RatifyEnv_1830 -> AgdaAny
du_currentEpoch_2596 v0 = coe d_currentEpoch_1844 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2598 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2598 v1
du_dreps_2598 ::
  T_RatifyEnv_1830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2598 v0 = coe d_dreps_1846 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1824
d_stakeDistrs_2600 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2600 v1
du_stakeDistrs_2600 :: T_RatifyEnv_1830 -> T_StakeDistrs_1824
du_stakeDistrs_2600 v0 = coe d_stakeDistrs_1842 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2602 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2602 v1
du_treasury_2602 :: T_RatifyEnv_1830 -> Integer
du_treasury_2602 v0 = coe d_treasury_1850 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1830 ->
  T_RatifyState_1852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1852 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2608 = erased
