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
d_DecEq'45'Credential_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_110 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- _.Epoch
d_Epoch_186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_186 = erased
-- _.GovAction
d_GovAction_200 a0 = ()
-- _.GovActionID
d_GovActionID_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_204 = erased
-- _.GovActionState
d_GovActionState_206 a0 = ()
-- _.GovRole
d_GovRole_214 a0 = ()
-- _.NeedsHash
d_NeedsHash_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_NeedsHash_256 = erased
-- _.PParamGroup
d_PParamGroup_286 a0 = ()
-- _.PParams
d_PParams_288 a0 = ()
-- _.UpdateT
d_UpdateT_292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_292 = erased
-- _.VDeleg
d_VDeleg_414 a0 = ()
-- _.preoEpoch
d_preoEpoch_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_574 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1540 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1556 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1558 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1606 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1616 = erased
-- Ledger.Ratify._
d___1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1618 ~v0 = du___1618
du___1618 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1618
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1622 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1622 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1622 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1622 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_620 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> AgdaAny
d_'8739'_'8741'_'8739'_1634 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1634 v2 v3
du_'8739'_'8741'_'8739'_1634 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> AgdaAny
du_'8739'_'8741'_'8739'_1634 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_620 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1644 ~v0 = du_vote_1644
du_vote_1644 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1644 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1646 ~v0 = du_defer_1646
du_defer_1646 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1646
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1648 ~v0 v1 = du_maxThreshold_1648 v1
du_maxThreshold_1648 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1648 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1656)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_216 v0))
-- Ledger.Ratify._.comb
d_comb_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1656 ~v0 ~v1 v2 v3 = du_comb_1656 v2 v3
du_comb_1656 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1656 v0 v1
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
d_'9472'_1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1666 ~v0 = du_'9472'_1666
du_'9472'_1666 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1666 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1668 ~v0 = du_'10003''8224'_1668
du_'10003''8224'_1668 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1668 = coe du_vote_1644 (coe du_defer_1646)
-- Ledger.Ratify.threshold
d_threshold_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1670 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_650
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1622 (coe du_'9472'_1666)
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P1_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_Q1_218
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_652 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1634 (coe du_'9472'_1666)
             (coe du_P'47'Q2a'47'b_1776 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_654 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1622 (coe du_'10003'_1774 (coe v2))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P3_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_656 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1622 (coe du_'10003'_1774 (coe v2))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P4_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_Q4_224
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_658 v4
        -> coe
             du_'8739'_'8741'_'8739'_1634 (coe du_'10003'_1774 (coe v2))
             (coe du_P'47'Q5_1782 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_660 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1622 (coe du_'10003'_1774 (coe v2))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P6_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v1))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_662
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1622 (coe du_'10003''8224'_1668)
             (coe du_'10003''8224'_1668) (coe du_'10003''8224'_1668)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1774 ~v0 ~v1 v2 = du_'10003'_1774 v2
du_'10003'_1774 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1774 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1668) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1776 ~v0 v1 v2 = du_P'47'Q2a'47'b_1776 v1 v2
du_P'47'Q2a'47'b_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1776 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P2a_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_Q2a_220
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P2b_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_Q2b_222
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1780 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1780 v1 v3
du_pparamThreshold_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1780 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_154
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P5a_196
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_156
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P5b_198
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_158
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P5c_200
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_160
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_P5d_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0))))
             (coe du_'9472'_1666)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_162
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1666)
             (coe
                du_vote_1644
                (MAlonzo.Code.Ledger.PParams.d_Q5e_226
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1782 v0 v1 ~v2 v3 = du_P'47'Q5_1782 v0 v1 v3
du_P'47'Q5_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1782 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1648
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1780 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1648
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1780 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> ()
d_canVote_1790 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1798 a0 = ()
newtype T_StakeDistrs_1798
  = C_StakeDistrs'46'constructor_11009 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1802 ::
  T_StakeDistrs_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1802 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11009 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1804 a0 = ()
data T_RatifyEnv_1804
  = C_RatifyEnv'46'constructor_11095 T_StakeDistrs_1798 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1816 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
d_stakeDistrs_1816 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11095 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1818 :: T_RatifyEnv_1804 -> AgdaAny
d_currentEpoch_1818 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11095 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1820 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1820 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11095 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1822 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1822 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11095 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1824 :: T_RatifyEnv_1804 -> Integer
d_treasury_1824 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11095 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1826 a0 = ()
data T_RatifyState_1826
  = C_'10214'_'44'_'44'_'10215''691'_1840 MAlonzo.Code.Ledger.Enact.T_EnactState_784
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1834 ::
  T_RatifyState_1826 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_es_1834 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1840 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1836 ::
  T_RatifyState_1826 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1836 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1840 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1838 :: T_RatifyState_1826 -> Bool
d_delay_1838 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1840 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1842 = erased
-- Ledger.Ratify.govRole
d_govRole_1844 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618
d_govRole_1844 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_632 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_634
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_636
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630 -> ()
d_IsCC_1848 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630 -> ()
d_IsDRep_1850 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630 -> ()
d_IsSPO_1852 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1860 ~v0 = du_coinThreshold_1860
du_coinThreshold_1860 :: Integer
du_coinThreshold_1860 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1862 ~v0 = du_rankThreshold_1862
du_rankThreshold_1862 :: Integer
du_rankThreshold_1862 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1864 ~v0 v1 v2
  = du_mostStakeDRepDist_1864 v1 v2
du_mostStakeDRepDist_1864 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1864 v0 v1
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
d_mostStakeDRepDist'45'0_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1874 ~v0 v1
  = du_mostStakeDRepDist'45'0_1874 v1
du_mostStakeDRepDist'45'0_1874 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1874 v0
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
                    (coe du_mostStakeDRepDist_1864 (coe v0) (coe (0 :: Integer))) v0)
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
d_mostStakeDRepDist'45''8709'_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1882 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
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
d_helper_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1896 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1924 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1924 v0 v1 v2
du_'8707'topNDRepDist_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1924 v0 v1 v2
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
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
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
               (d_mostStakeDRepDist'45''8709'_1882 (coe v0) (coe v2)))))
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
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
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
                     (d_mostStakeDRepDist'45''8709'_1882 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
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
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1164
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
                                                       (d_mostStakeDRepDist'45''8709'_1882
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
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1164
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
                                                        (d_mostStakeDRepDist'45''8709'_1882
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
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1164
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
                                                           (d_mostStakeDRepDist'45''8709'_1882
                                                              (coe v0) (coe v2))))))
                                               (coe v3))))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1950 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
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
                                                  du_mostStakeDRepDist_1864 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1924 (coe v0) (coe v1)
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
d_restrictedDists_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1798 -> T_StakeDistrs_1798
d_restrictedDists_1962 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1962 v3
du_restrictedDists_1962 :: T_StakeDistrs_1798 -> T_StakeDistrs_1798
du_restrictedDists_1962 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_1976 ::
  T_StakeDistrs_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1976 v0 = coe d_stakeDistr_1802 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_1982 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_632
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_620))
         (coe
            du_actualCCVotes_2110 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
         (coe du_actualPDRepVotes_2118 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
            (coe du_actualDRepVotes_2120 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2122 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2000 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2000 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2000 v0
du_ccHotKeys_2000 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2000 v0 = coe d_ccHotKeys_1822 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2002 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2002 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2002 v0
du_currentEpoch_2002 :: T_RatifyEnv_1804 -> AgdaAny
du_currentEpoch_2002 v0 = coe d_currentEpoch_1818 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2004 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2004 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2004 v0
du_dreps_2004 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2004 v0 = coe d_dreps_1820 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2006 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1798
d_stakeDistrs_2006 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2006 v0
du_stakeDistrs_2006 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
du_stakeDistrs_2006 v0 = coe d_stakeDistrs_1816 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2008 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2008 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2008 v0
du_treasury_2008 :: T_RatifyEnv_1804 -> Integer
du_treasury_2008 v0 = coe d_treasury_1824 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2070 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2070 v5 v6
du_roleVotes_2070 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2070 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_632))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1130
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2078 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2078 v0 v1
du_activeDReps_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2078 v0 v1
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
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1818 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                    (d_currentEpoch_1818 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))))
                 (coe d_currentEpoch_1818 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1820 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630]
d_spos_2084 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2084 v1
du_spos_2084 ::
  T_RatifyEnv_1804 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630]
du_spos_2084 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756))
           (coe d_govRole_1844 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
         (coe d_stakeDistr_1802 (coe d_stakeDistrs_1816 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2086 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2086 v0 v1 v6
du_getCCHotCred_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2086 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1818 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
                              (d_currentEpoch_1818 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                    (coe v0))))
                           (coe d_currentEpoch_1818 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1822 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_192
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))
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
                                    (coe d_ccHotKeys_1822 (coe v1)))))) in
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
d_actualCCVote_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_682
d_actualCCVote_2096 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2096 v0 v1 v5 v6 v7
du_actualCCVote_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_682
du_actualCCVote_2096 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2086 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_620) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756)
                            (coe
                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_620) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_688)
-- Ledger.Ratify._.activeCC
d_activeCC_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeCC_2106 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_2106 v0 v1 v6
du_activeCC_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeCC_2106 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_2086 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2110 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2110 v0 v1 v2 v3 v5
du_actualCCVotes_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2110 v0 v1 v2 v3 v4
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
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
                          (coe du_activeCC_2106 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1074
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_2096 (coe v0) (coe v1) (coe v4)) (coe v6)))
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
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2118 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2118 v0 v6
du_actualPDRepVotes_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2118 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_634)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_688)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_636)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_650
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_634)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_688)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_636)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_684)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2120 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2120 v0 v1 v5
du_actualDRepVotes_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2120 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
      (coe
         du_roleVotes_2070 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622))
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
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_632
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622))
            (coe du_activeDReps_2078 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2122 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2122 v0 v1 v5 v6
du_actualSPOVotes_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2122 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
              (coe
                 du_roleVotes_2070 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_2084 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_688)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_656 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
                (coe
                   du_roleVotes_2070 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_2084 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2124 ~v0 v1 v2 = du__'47''8320'__2124 v1 v2
du__'47''8320'__2124 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2124 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2132 ~v0 v1 v2 v3 = du_getStakeDist_2132 v1 v2 v3
du_getStakeDist_2132 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2132 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_620
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
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756))
                     (coe d_govRole_1844 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1138
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756))
                  (coe d_govRole_1844 (coe v3)) (coe v0))
             (d_stakeDistr_1802 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1138
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756))
                  (coe d_govRole_1844 (coe v3)) (coe v0))
             (d_stakeDistr_1802 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2142 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2124
      (coe
         d_acceptedStake_2158 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2160 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2156 ~v0 v1 v2 v3 ~v4 = du_dist_2156 v1 v2 v3
du_dist_2156 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2156 v0 v1 v2
  = coe du_getStakeDist_2132 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2158 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
         (coe du_dist_2156 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1600
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_758))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_684)))
-- Ledger.Ratify._.totalStake
d_totalStake_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630] ->
  T_StakeDistrs_1798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2160 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
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
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
         (coe du_dist_2156 (coe v1) (coe v2) (coe v3))
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
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_758))
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
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_684))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_686))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 -> ()
d_acceptedBy_2166 = erased
-- Ledger.Ratify.accepted
d_accepted_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 -> ()
d_accepted_2194 = erased
-- Ledger.Ratify.expired
d_expired_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 -> ()
d_expired_2202 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_784 -> ()
d_verifyPrev_2210 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> Bool
d_delayingAction_2232 ~v0 v1 = du_delayingAction_2232 v1
du_delayingAction_2232 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> Bool
du_delayingAction_2232 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_650
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_652 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_654 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_656 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_658 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_660 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_662
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_784 -> Bool -> ()
d_delayed_2236 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  T_RatifyState_1826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2246 = erased
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2262 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2262 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2262 v0
du_ccHotKeys_2262 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2262 v0 = coe d_ccHotKeys_1822 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2264 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  AgdaAny
d_currentEpoch_2264 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2264 v0
du_currentEpoch_2264 :: T_RatifyEnv_1804 -> AgdaAny
du_currentEpoch_2264 v0 = coe d_currentEpoch_1818 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2266 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2266 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2266 v0
du_dreps_2266 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2266 v0 = coe d_dreps_1820 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2268 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  T_StakeDistrs_1798
d_stakeDistrs_2268 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2268 v0
du_stakeDistrs_2268 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
du_stakeDistrs_2268 v0 = coe d_stakeDistrs_1816 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2270 ::
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  Integer
d_treasury_2270 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2270 v0
du_treasury_2270 :: T_RatifyEnv_1804 -> Integer
du_treasury_2270 v0 = coe d_treasury_1824 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2292 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_650
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_796 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_652 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_796 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_654 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_798 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_656 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_800 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_658 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_802 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_660 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_662
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2346 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe d_verifyPrev'63'_2292 (coe v0) (coe v1) (coe v2) (coe v3))
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
-- Ledger.Ratify.acceptedBy?
d_acceptedBy'63'_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2366 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1425 v5 v6 v7 v8 v9
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v14 -> v14))
                              (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
                              (coe
                                 d_threshold_1670 v0 v12
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 ()
                                    erased () erased
                                    (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    v10)
                                 (MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v3)) v4))
                           (coe
                              d_acceptedStakeRatio_2142 (coe v0) (coe v4)
                              (coe
                                 MAlonzo.Code.Interface.IsSet.du_dom_538
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                 (coe
                                    d_actualVotes_1982 (coe v0) (coe v1) (coe v12) (coe v10)
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_746 (coe v3))))
                              (coe d_stakeDistrs_1816 (coe v1))
                              (coe
                                 d_actualVotes_1982 (coe v0) (coe v1) (coe v12) (coe v10)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v3))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_746 (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.accepted?
d_accepted'63'_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         d_acceptedBy'63'_2366 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_620))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe
            d_acceptedBy'63'_2366 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_622))
         (coe
            d_acceptedBy'63'_2366 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_624)))
-- Ledger.Ratify.expired?
d_expired'63'_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2398 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_750 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_750 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2414 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2414
  = C_RATIFY'45'Accept_2444 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2462 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2480 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2420 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2420 v0 = coe d_ccHotKeys_1822 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2422 :: T_RatifyEnv_1804 -> AgdaAny
d_currentEpoch_2422 v0 = coe d_currentEpoch_1818 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2424 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2424 v0 = coe d_dreps_1820 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2426 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
d_stakeDistrs_2426 v0 = coe d_stakeDistrs_1816 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2428 :: T_RatifyEnv_1804 -> Integer
d_treasury_2428 v0 = coe d_treasury_1824 (coe v0)
-- Ledger.Ratify._.action
d_action_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_98425 ->
  T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_2434 ~v0 v1 ~v2 = du_action_2434 v1
du_action_2434 ::
  T_GeneralizeTel_98425 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
du_action_2434 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_752
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_98415 v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2450 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2450 v0 = coe d_ccHotKeys_1822 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2452 :: T_RatifyEnv_1804 -> AgdaAny
d_currentEpoch_2452 v0 = coe d_currentEpoch_1818 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2454 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2454 v0 = coe d_dreps_1820 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2456 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
d_stakeDistrs_2456 v0 = coe d_stakeDistrs_1816 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2458 :: T_RatifyEnv_1804 -> Integer
d_treasury_2458 v0 = coe d_treasury_1824 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2468 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2468 v0 = coe d_ccHotKeys_1822 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2470 :: T_RatifyEnv_1804 -> AgdaAny
d_currentEpoch_2470 v0 = coe d_currentEpoch_1818 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2472 ::
  T_RatifyEnv_1804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2472 v0 = coe d_dreps_1820 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2474 :: T_RatifyEnv_1804 -> T_StakeDistrs_1798
d_stakeDistrs_2474 v0 = coe d_stakeDistrs_1816 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2476 :: T_RatifyEnv_1804 -> Integer
d_treasury_2476 v0 = coe d_treasury_1824 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1804 ->
  T_RatifyState_1826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1826 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2482 = erased
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_98415 ::
  T_GeneralizeTel_98425 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_98415 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_98417 ::
  T_GeneralizeTel_98425 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es_98417
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_98419 ::
  T_GeneralizeTel_98425 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_98419
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_98421 :: T_GeneralizeTel_98425 -> Bool
d_'46'generalizedField'45'd_98421 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es'
d_'46'generalizedField'45'es''_98423 ::
  T_GeneralizeTel_98425 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es''_98423
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_98425 a0 = ()
data T_GeneralizeTel_98425
  = C_mkGeneralizeTel_98427 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_98923 ::
  T_GeneralizeTel_98931 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_98923 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_98925 ::
  T_GeneralizeTel_98931 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es_98925
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_98927 ::
  T_GeneralizeTel_98931 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_98927
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_98929 :: T_GeneralizeTel_98931 -> Bool
d_'46'generalizedField'45'd_98929 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_98931 a0 = ()
data T_GeneralizeTel_98931
  = C_mkGeneralizeTel_98933 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_99335 ::
  T_GeneralizeTel_99343 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_99335 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_99337 ::
  T_GeneralizeTel_99343 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es_99337
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_99339 ::
  T_GeneralizeTel_99343 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_99339
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_99341 :: T_GeneralizeTel_99343 -> Bool
d_'46'generalizedField'45'd_99341 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_99343 a0 = ()
data T_GeneralizeTel_99343
  = C_mkGeneralizeTel_99345 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
