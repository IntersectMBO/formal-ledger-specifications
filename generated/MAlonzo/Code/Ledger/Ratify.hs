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
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
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
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
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
d_VDeleg_454 a0 = ()
-- _.preoEpoch
d_preoEpoch_618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1620 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1636 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1638 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1686 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1696 = erased
-- Ledger.Ratify._
d___1698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1698 ~v0 = du___1698
du___1698 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1698
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1702 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1702 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1702 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1702 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_660 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> AgdaAny
d_'8739'_'8741'_'8739'_1714 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1714 v2 v3
du_'8739'_'8741'_'8739'_1714 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> AgdaAny
du_'8739'_'8741'_'8739'_1714 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_660 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1724 ~v0 = du_vote_1724
du_vote_1724 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1724 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1726 ~v0 = du_defer_1726
du_defer_1726 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1726
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1728 ~v0 v1 = du_maxThreshold_1728 v1
du_maxThreshold_1728 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1728 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1736)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218 v0))
-- Ledger.Ratify._.comb
d_comb_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1736 ~v0 ~v1 v2 v3 = du_comb_1736 v2 v3
du_comb_1736 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1736 v0 v1
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
d_'9472'_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1746 ~v0 = du_'9472'_1746
du_'9472'_1746 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1746 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1748 ~v0 = du_'10003''8224'_1748
du_'10003''8224'_1748 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1748 = coe du_vote_1724 (coe du_defer_1726)
-- Ledger.Ratify.threshold
d_threshold_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1750 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1702 (coe du_'9472'_1746)
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P1_198
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v1))))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_Q1_230
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1714 (coe du_'9472'_1746)
             (coe du_P'47'Q2a'47'b_1856 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1702 (coe du_'10003'_1854 (coe v2))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P3_204
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v1))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1702 (coe du_'10003'_1854 (coe v2))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P4_206
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v1))))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_Q4_236
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v4
        -> coe
             du_'8739'_'8741'_'8739'_1714 (coe du_'10003'_1854 (coe v2))
             (coe du_P'47'Q5_1862 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1702 (coe du_'10003'_1854 (coe v2))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P6_216
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v1))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1702 (coe du_'10003''8224'_1748)
             (coe du_'10003''8224'_1748) (coe du_'10003''8224'_1748)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1854 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1854 ~v0 ~v1 v2 = du_'10003'_1854 v2
du_'10003'_1854 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1854 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
      (coe du_'10003''8224'_1748) (coe v0)
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1856 ~v0 v1 v2 = du_P'47'Q2a'47'b_1856 v1 v2
du_P'47'Q2a'47'b_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1856 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P2a_200
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_Q2a_232
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P2b_202
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_Q2b_234
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1860 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1860 v1 v3
du_pparamThreshold_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1860 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_166
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P5a_208
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_168
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P5b_210
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_170
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P5c_212
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_172
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_P5d_214
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0))))
             (coe du_'9472'_1746)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_174
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1746)
             (coe
                du_vote_1724
                (MAlonzo.Code.Ledger.PParams.d_Q5e_238
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1862 v0 v1 ~v2 v3 = du_P'47'Q5_1862 v0 v1 v3
du_P'47'Q5_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1862 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1728
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1860 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1728
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1860 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> ()
d_canVote_1870 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1878 a0 = ()
newtype T_StakeDistrs_1878
  = C_StakeDistrs'46'constructor_11085 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1882 ::
  T_StakeDistrs_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1882 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_11085 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1884 a0 = ()
data T_RatifyEnv_1884
  = C_RatifyEnv'46'constructor_11171 T_StakeDistrs_1878 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1896 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
d_stakeDistrs_1896 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11171 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1898 :: T_RatifyEnv_1884 -> AgdaAny
d_currentEpoch_1898 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11171 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1900 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1900 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11171 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1902 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1902 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11171 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1904 :: T_RatifyEnv_1884 -> Integer
d_treasury_1904 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11171 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1906 a0 = ()
data T_RatifyState_1906
  = C_'10214'_'44'_'44'_'10215''691'_1920 MAlonzo.Code.Ledger.Enact.T_EnactState_824
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1914 ::
  T_RatifyState_1906 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_es_1914 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1920 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1916 ::
  T_RatifyState_1906 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1916 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1920 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1918 :: T_RatifyState_1906 -> Bool
d_delay_1918 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1920 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1922 = erased
-- Ledger.Ratify.govRole
d_govRole_1924 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658
d_govRole_1924 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_672 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_674
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_676
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670 -> ()
d_IsCC_1928 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670 -> ()
d_IsDRep_1930 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670 -> ()
d_IsSPO_1932 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1940 ~v0 = du_coinThreshold_1940
du_coinThreshold_1940 :: Integer
du_coinThreshold_1940 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1942 ~v0 = du_rankThreshold_1942
du_rankThreshold_1942 :: Integer
du_rankThreshold_1942 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1944 ~v0 v1 v2
  = du_mostStakeDRepDist_1944 v1 v2
du_mostStakeDRepDist_1944 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1944 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1154 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1954 ~v0 v1
  = du_mostStakeDRepDist'45'0_1954 v1
du_mostStakeDRepDist'45'0_1954 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1954 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v1 v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534)
                    (coe du_mostStakeDRepDist_1944 (coe v0) (coe (0 :: Integer))) v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
d_mostStakeDRepDist'45''8709'_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1962 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1976 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_2004 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_2004 v0 v1 v2
du_'8707'topNDRepDist_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_2004 v0 v1 v2
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
                       MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_174
                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                erased erased erased
                                (coe
                                   MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
               (d_mostStakeDRepDist'45''8709'_1962 (coe v0) (coe v2)))))
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
                             MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      erased erased erased
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                     (d_mostStakeDRepDist'45''8709'_1962 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_174
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                                                               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                        erased erased erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                                                       (d_mostStakeDRepDist'45''8709'_1962
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
                                                                MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      erased erased
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         erased erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                                                        (d_mostStakeDRepDist'45''8709'_1962
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
                                                                   MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                         (coe
                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         erased erased
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                            erased erased erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_214
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
                                                           (d_mostStakeDRepDist'45''8709'_1962
                                                              (coe v0) (coe v2))))))
                                               (coe v3))))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_2030 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))
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
                                                  du_mostStakeDRepDist_1944 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_2004 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1878 -> T_StakeDistrs_1878
d_restrictedDists_2042 ~v0 ~v1 ~v2 v3 = du_restrictedDists_2042 v3
du_restrictedDists_2042 :: T_StakeDistrs_1878 -> T_StakeDistrs_1878
du_restrictedDists_2042 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_2056 ::
  T_StakeDistrs_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2056 v0 = coe d_stakeDistr_1882 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_2062 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_672
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_660))
         (coe
            du_actualCCVotes_2190 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
         (coe du_actualPDRepVotes_2198 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
            (coe du_actualDRepVotes_2200 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2202 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_2080 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2080 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_2080 v0
du_ccHotKeys_2080 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2080 v0 = coe d_ccHotKeys_1902 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_2082 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2082 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_2082 v0
du_currentEpoch_2082 :: T_RatifyEnv_1884 -> AgdaAny
du_currentEpoch_2082 v0 = coe d_currentEpoch_1898 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_2084 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2084 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_2084 v0
du_dreps_2084 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2084 v0 = coe d_dreps_1900 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_2086 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1878
d_stakeDistrs_2086 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_2086 v0
du_stakeDistrs_2086 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
du_stakeDistrs_2086 v0 = coe d_stakeDistrs_1896 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_2088 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2088 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_2088 v0
du_treasury_2088 :: T_RatifyEnv_1884 -> Integer
du_treasury_2088 v0 = coe d_treasury_1904 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_2150 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_2150 v5 v6
du_roleVotes_2150 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_2150 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_672))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2158 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_2158 v0 v1
du_activeDReps_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 -> [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2158 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1898 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                    (d_currentEpoch_1898 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))))
                 (coe d_currentEpoch_1898 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1900 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670]
d_spos_2164 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_2164 v1
du_spos_2164 ::
  T_RatifyEnv_1884 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670]
du_spos_2164 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
           (coe d_govRole_1924 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
         (coe d_stakeDistr_1882 (coe d_stakeDistrs_1896 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getCCHotCred_2166 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2166 v0 v1 v6
du_getCCHotCred_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getCCHotCred_2166 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1898 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
                              (d_currentEpoch_1898 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512
                                    (coe v0))))
                           (coe d_currentEpoch_1898 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1902 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                    (coe d_ccHotKeys_1902 (coe v1)))))) in
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
d_actualCCVote_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_actualCCVote_2176 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2176 v0 v1 v5 v6 v7
du_actualCCVote_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
du_actualCCVote_2176 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2166 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_660) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
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
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_660) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)
-- Ledger.Ratify._.activeCC
d_activeCC_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeCC_2186 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_2186 v0 v1 v6
du_activeCC_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeCC_2186 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_2166 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2190 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2190 v0 v1 v2 v3 v5
du_actualCCVotes_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2190 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_346 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                          (coe du_activeCC_2186 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1076
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_2176 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_540
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2198 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2198 v0 v6
du_actualPDRepVotes_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2198 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_674)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_676)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_674)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_676)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2200 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2200 v0 v1 v5
du_actualDRepVotes_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2200 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
      (coe
         du_roleVotes_2150 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_672
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662))
            (coe du_activeDReps_2158 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2202 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2202 v0 v1 v5 v6
du_actualSPOVotes_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2202 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
              (coe
                 du_roleVotes_2150 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_2164 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_728)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
                (coe
                   du_roleVotes_2150 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_2164 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2204 ~v0 v1 v2 = du__'47''8320'__2204 v1 v2
du__'47''8320'__2204 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2204 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2212 ~v0 v1 v2 v3 = du_getStakeDist_2212 v1 v2 v3
du_getStakeDist_2212 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2212 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_660
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                     (coe d_govRole_1924 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1146
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                  (coe d_govRole_1924 (coe v3)) (coe v0))
             (d_stakeDistr_1882 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1146
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796))
                  (coe d_govRole_1924 (coe v3)) (coe v0))
             (d_stakeDistr_1882 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2222 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2204
      (coe
         d_acceptedStake_2238 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2240 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.dist
d_dist_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dist_2236 ~v0 v1 v2 v3 ~v4 = du_dist_2236 v1 v2 v3
du_dist_2236 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dist_2236 v0 v1 v2
  = coe du_getStakeDist_2212 (coe v0) (coe v1) (coe v2)
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2238 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
         (coe du_dist_2236 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724)))
-- Ledger.Ratify._.totalStake
d_totalStake_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670] ->
  T_StakeDistrs_1878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
         (coe du_dist_2236 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798))
               (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_724))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_726))))))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 -> ()
d_acceptedBy_2246 = erased
-- Ledger.Ratify.accepted
d_accepted_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 -> ()
d_accepted_2340 = erased
-- Ledger.Ratify.expired
d_expired_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 -> ()
d_expired_2348 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> ()
d_verifyPrev_2356 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> Bool
d_delayingAction_2378 ~v0 v1 = du_delayingAction_2378 v1
du_delayingAction_2378 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> Bool
du_delayingAction_2378 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> Bool -> ()
d_delayed_2382 = erased
-- Ledger.Ratify.acceptConds
d_acceptConds_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  T_RatifyState_1906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2392 = erased
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2408 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2408 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2408 v0
du_ccHotKeys_2408 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2408 v0 = coe d_ccHotKeys_1902 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2410 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_currentEpoch_2410 v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2410 v0
du_currentEpoch_2410 :: T_RatifyEnv_1884 -> AgdaAny
du_currentEpoch_2410 v0 = coe d_currentEpoch_1898 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2412 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2412 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2412 v0
du_dreps_2412 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2412 v0 = coe d_dreps_1900 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2414 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  T_StakeDistrs_1878
d_stakeDistrs_2414 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2414 v0
du_stakeDistrs_2414 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
du_stakeDistrs_2414 v0 = coe d_stakeDistrs_1896 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2416 ::
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  Integer
d_treasury_2416 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2416 v0
du_treasury_2416 :: T_RatifyEnv_1884 -> Integer
du_treasury_2416 v0 = coe d_treasury_1904 (coe v0)
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2438 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_690
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_692 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_694 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_838 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_696 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_840 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_698 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_700 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_702
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe d_verifyPrev'63'_2438 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_Is'45'nothing'63'_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_2508 ~v0 ~v1 v2 = du_Is'45'nothing'63'_2508 v2
du_Is'45'nothing'63'_2508 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Is'45'nothing'63'_2508 v0
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
d_acceptedBy'63'_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_658 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2524 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v5 -> v5))
            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
            (coe
               d_threshold_1750 v0
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v2)))
               (coe
                  MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                  () erased
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v2))))
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3)) v4))
         (coe
            d_acceptedStakeRatio_2222 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_540
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
               (coe
                  d_actualVotes_2062 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v2)))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v3))))
            (coe d_stakeDistrs_1896 (coe v1))
            (coe
               d_actualVotes_2062 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v2)))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796)
            v4 (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_660))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_226
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
                  (coe (0 :: Integer))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v2))))
               (coe
                  MAlonzo.Code.Ledger.PParams.d_ccMinSize_346
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v2)))))
            (coe
               du_Is'45'nothing'63'_2508
               (coe
                  d_threshold_1750 v0
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe MAlonzo.Code.Ledger.Enact.d_pparams_842 (coe v2)))
                  (coe
                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                     () erased
                     (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe MAlonzo.Code.Ledger.Enact.d_cc_836 (coe v2))))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v3))
                  v4))))
-- Ledger.Ratify.accepted?
d_accepted'63'_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2536 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_660))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe
            d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_662))
         (coe
            d_acceptedBy'63'_2524 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_664)))
-- Ledger.Ratify.expired?
d_expired'63'_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2552 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2568 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2568
  = C_RATIFY'45'Accept_2608 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Reject_2634 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_RATIFY'45'Continue_2660 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2584 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_ccHotKeys_2584 v1
du_ccHotKeys_2584 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2584 v0 = coe d_ccHotKeys_1902 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> AgdaAny
d_currentEpoch_2586 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_currentEpoch_2586 v1
du_currentEpoch_2586 :: T_RatifyEnv_1884 -> AgdaAny
du_currentEpoch_2586 v0 = coe d_currentEpoch_1898 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2588 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_dreps_2588 v1
du_dreps_2588 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2588 v0 = coe d_dreps_1900 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> T_StakeDistrs_1878
d_stakeDistrs_2590 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_stakeDistrs_2590 v1
du_stakeDistrs_2590 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
du_stakeDistrs_2590 v0 = coe d_stakeDistrs_1896 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 -> Integer
d_treasury_2592 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_treasury_2592 v1
du_treasury_2592 :: T_RatifyEnv_1884 -> Integer
du_treasury_2592 v0 = coe d_treasury_1904 (coe v0)
-- Ledger.Ratify._.action
d_action_2598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_action_2598 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_action_2598 v5
du_action_2598 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
du_action_2598 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_792
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2622 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2622 v1
du_ccHotKeys_2622 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2622 v0 = coe d_ccHotKeys_1902 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2624 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2624 v1
du_currentEpoch_2624 :: T_RatifyEnv_1884 -> AgdaAny
du_currentEpoch_2624 v0 = coe d_currentEpoch_1898 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2626 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2626 v1
du_dreps_2626 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2626 v0 = coe d_dreps_1900 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1878
d_stakeDistrs_2628 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2628 v1
du_stakeDistrs_2628 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
du_stakeDistrs_2628 v0 = coe d_stakeDistrs_1896 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2630 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2630 v1
du_treasury_2630 :: T_RatifyEnv_1884 -> Integer
du_treasury_2630 v0 = coe d_treasury_1904 (coe v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2648 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_ccHotKeys_2648 v1
du_ccHotKeys_2648 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2648 v0 = coe d_ccHotKeys_1902 (coe v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_2650 ~v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_currentEpoch_2650 v1
du_currentEpoch_2650 :: T_RatifyEnv_1884 -> AgdaAny
du_currentEpoch_2650 v0 = coe d_currentEpoch_1898 (coe v0)
-- Ledger.Ratify._.dreps
d_dreps_2652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2652 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_dreps_2652 v1
du_dreps_2652 ::
  T_RatifyEnv_1884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2652 v0 = coe d_dreps_1900 (coe v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1878
d_stakeDistrs_2654 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_stakeDistrs_2654 v1
du_stakeDistrs_2654 :: T_RatifyEnv_1884 -> T_StakeDistrs_1878
du_stakeDistrs_2654 v0 = coe d_stakeDistrs_1896 (coe v0)
-- Ledger.Ratify._.treasury
d_treasury_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_2656 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_treasury_2656 v1
du_treasury_2656 :: T_RatifyEnv_1884 -> Integer
du_treasury_2656 v0 = coe d_treasury_1904 (coe v0)
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1884 ->
  T_RatifyState_1906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1906 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2662 = erased
