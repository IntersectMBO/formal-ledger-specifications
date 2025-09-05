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

module MAlonzo.Code.Ledger.Conway.Specification.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.GeneralisedArithmetic
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.Qstdlib.Data.Rational.Properties

-- _.Constraint
d_Constraint_10 :: Integer -> ()
d_Constraint_10 = erased
-- _.fromNat
d_fromNat_12 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromNat_12 v0 ~v1 = du_fromNat_12 v0
du_fromNat_12 :: Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_fromNat_12 v0
  = coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)
-- _.Acnt
d_Acnt_34 a0 = ()
-- _.Credential
d_Credential_64 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
            (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
-- _.HasPParams
d_HasPParams_288 a0 a1 a2 = ()
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_294 ~v0 = du_HasTreasury'45'Acnt_294
du_HasTreasury'45'Acnt_294 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_174
-- _.THash
d_THash_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_350 = erased
-- _.Number-Epoch
d_Number'45'Epoch_380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.PParamsOf
d_PParamsOf_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- _.RwdAddr
d_RwdAddr_432 a0 = ()
-- _.TxOut
d_TxOut_540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_540 = erased
-- _.VoteDelegs
d_VoteDelegs_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_572 = erased
-- _.Withdrawals
d_Withdrawals_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_576 = erased
-- _.addEpoch
d_addEpoch_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_582 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.Acnt.reserves
d_reserves_776 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- _.Acnt.treasury
d_treasury_778 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- _.GovActionState.action
d_action_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_874
d_action_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  AgdaAny
d_expiresIn_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1008
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  AgdaAny
d_prevAction_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1012
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- _.GovActionState.votes
d_votes_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_976
d_votes_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1004
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_896 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- _.RwdAddr.net
d_net_1490 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RwdAddr.stake
d_stake_1492 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState
d_CertState_1834 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.CertStateOf
d_CertStateOf_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DRepsOf
d_DRepsOf_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState
d_DState_1856 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1862 v0 ~v1
  = du_DecEq'45'DepositPurpose_1862 v0
du_DecEq'45'DepositPurpose_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe v0))
-- Ledger.Conway.Specification.Epoch._.DepositPurpose
d_DepositPurpose_1868 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Deposits
d_Deposits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_Deposits_1870 = erased
-- Ledger.Conway.Specification.Epoch._.DepositsOf
d_DepositsOf_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState
d_GState_1880 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasCertState
d_HasCertState_1906 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps
d_HasDReps_1912 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps-CertState
d_HasDReps'45'CertState_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'CertState_1916 ~v0 ~v1
  = du_HasDReps'45'CertState_1916
du_HasDReps'45'CertState_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'CertState_1916
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1480
-- Ledger.Conway.Specification.Epoch._.HasDReps-GState
d_HasDReps'45'GState_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'GState_1918 ~v0 ~v1 = du_HasDReps'45'GState_1918
du_HasDReps'45'GState_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'GState_1918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1468
-- Ledger.Conway.Specification.Epoch._.HasDeposits
d_HasDeposits_1926 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState
d_HasPState_1938 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState-CertState
d_HasPState'45'CertState_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'CertState_1942 ~v0 ~v1
  = du_HasPState'45'CertState_1942
du_HasPState'45'CertState_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'CertState_1942
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1474
-- Ledger.Conway.Specification.Epoch._.HasRewards
d_HasRewards_1958 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRewards-CertState
d_HasRewards'45'CertState_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'CertState_1962 ~v0 ~v1
  = du_HasRewards'45'CertState_1962
du_HasRewards'45'CertState_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'CertState_1962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1478
-- Ledger.Conway.Specification.Epoch._.PStateOf
d_PStateOf_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardsOf
d_RewardsOf_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Stake
d_Stake_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_Stake_2008 = erased
-- Ledger.Conway.Specification.Epoch._.CertState.dState
d_dState_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1350
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.gState
d_gState_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.pState
d_pState_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1352
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.rewards
d_rewards_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1314
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.stakeDelegs
d_stakeDelegs_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1312
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.voteDelegs
d_voteDelegs_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1310
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.ccHotKeys
d_ccHotKeys_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1338
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.dreps
d_dreps_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1336
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCertState.CertStateOf
d_CertStateOf_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDReps.DRepsOf
d_DRepsOf_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits.DepositsOf
d_DepositsOf_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasPState.PStateOf
d_PStateOf_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasRewards.RewardsOf
d_RewardsOf_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState
d_EnactState_2238 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.EnactStateOf
d_EnactStateOf_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_EnactStateOf_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1080
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState
d_HasEnactState_2246 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPParams-EnactState
d_HasPParams'45'EnactState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'EnactState_2250 ~v0 ~v1
  = du_HasPParams'45'EnactState_2250
du_HasPParams'45'EnactState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'EnactState_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1088
-- Ledger.Conway.Specification.Epoch._.EnactState.cc
d_cc_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1056 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.constitution
d_constitution_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1058
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pparams
d_pparams_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1062
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pv
d_pv_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1060 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.withdrawals
d_withdrawals_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1064
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState.EnactStateOf
d_EnactStateOf_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_EnactStateOf_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1080
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GovState
d_GovState_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_GovState_2320 = erased
-- Ledger.Conway.Specification.Epoch._.GovStateOf
d_GovStateOf_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2428
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasGovState
d_HasGovState_2330 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasGovState.GovStateOf
d_GovStateOf_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2428
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCast-LState
d_HasCast'45'LState_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2452 ~v0 ~v1 = du_HasCast'45'LState_2452
du_HasCast'45'LState_2452 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LState_2768
-- Ledger.Conway.Specification.Epoch._.HasCertState-LState
d_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
d_HasCertState'45'LState_2454 ~v0 ~v1
  = du_HasCertState'45'LState_2454
du_HasCertState'45'LState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
du_HasCertState'45'LState_2454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2748
-- Ledger.Conway.Specification.Epoch._.HasDState-LState
d_HasDState'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
d_HasDState'45'LState_2456 ~v0 ~v1 = du_HasDState'45'LState_2456
du_HasDState'45'LState_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
du_HasDState'45'LState_2456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2756
-- Ledger.Conway.Specification.Epoch._.HasDeposits-LState
d_HasDeposits'45'LState_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'LState_2458 ~v0 ~v1
  = du_HasDeposits'45'LState_2458
du_HasDeposits'45'LState_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'LState_2458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2750
-- Ledger.Conway.Specification.Epoch._.HasGState-LState
d_HasGState'45'LState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
d_HasGState'45'LState_2464 ~v0 ~v1 = du_HasGState'45'LState_2464
du_HasGState'45'LState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
du_HasGState'45'LState_2464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2754
-- Ledger.Conway.Specification.Epoch._.HasGovState-LState
d_HasGovState'45'LState_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
d_HasGovState'45'LState_2466 ~v0 ~v1
  = du_HasGovState'45'LState_2466
du_HasGovState'45'LState_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
du_HasGovState'45'LState_2466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2746
-- Ledger.Conway.Specification.Epoch._.HasLState
d_HasLState_2468 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPState-LState
d_HasPState'45'LState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'LState_2474 ~v0 ~v1 = du_HasPState'45'LState_2474
du_HasPState'45'LState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'LState_2474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2758
-- Ledger.Conway.Specification.Epoch._.HasPools-LState
d_HasPools'45'LState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'LState_2476 ~v0 ~v1 = du_HasPools'45'LState_2476
du_HasPools'45'LState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'LState_2476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPools'45'LState_2752
-- Ledger.Conway.Specification.Epoch._.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'LState_2482 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2482
du_HasVoteDelegs'45'LState_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
du_HasVoteDelegs'45'LState_2482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasVoteDelegs'45'LState_2760
-- Ledger.Conway.Specification.Epoch._.LState
d_LState_2492 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.LStateOf
d_LStateOf_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
d_LStateOf_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2734
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasLState.LStateOf
d_LStateOf_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
d_LStateOf_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2734
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.certState
d_certState_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_certState_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2718
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.govSt
d_govSt_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2716
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.utxoSt
d_utxoSt_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2538 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2540 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2540
du_HasCast'45'PoolReapState_2540 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2410
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2566 = erased
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2570 ~v0 ~v1
  = du_HasCast'45'RatifyState_2570
du_HasCast'45'RatifyState_2570 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2570
-- Ledger.Conway.Specification.Epoch._.HasRatifyState
d_HasRatifyState_2574 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyState
d_RatifyState_2592 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyStateOf
d_RatifyStateOf_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2550 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
d_RatifyStateOf_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2558
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs
d_StakeDistrs_2598 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2550 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
d_RatifyStateOf_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2558
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.delay
d_delay_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  Bool
d_delay_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2542
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.es
d_es_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_es_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.removed
d_removed_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2540
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_2494
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_2492
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2686 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.BlocksMade
d_BlocksMade_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_BlocksMade_2688 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate
d_RewardUpdate_2700 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshot
d_Snapshot_2706 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshots
d_Snapshots_2710 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.flowConservation
d_flowConservation_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2744 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.rs
d_rs_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2804 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf
d_Δf_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δf_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2802 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2812
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δr
d_Δr_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δr_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2800 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt
d_Δt_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer
d_Δt_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2798 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2810
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.delegations
d_delegations_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2826
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.pools
d_pools_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2828
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.stake
d_stake_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2824
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.feeSS
d_feeSS_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  Integer
d_feeSS_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2890
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.go
d_go_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_go_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2888 (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.mark
d_mark_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_mark_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2884
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.set
d_set_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_set_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2886
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'UTxOState_2794 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2794
du_HasDeposits'45'UTxOState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'UTxOState_2794
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2372
-- Ledger.Conway.Specification.Epoch._.UTxOState
d_UTxOState_2824 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.UTxOState.deposits
d_deposits_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.donations
d_donations_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_donations_2932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2342
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.fees
d_fees_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_fees_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338 (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.utxo
d_utxo_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Specification.Epoch.EpochState
d_EpochState_2968 a0 a1 = ()
data T_EpochState_2968
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
-- Ledger.Conway.Specification.Epoch.EpochState.acnt
d_acnt_2980 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2980 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ss
d_ss_2982 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
d_ss_2982 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ls
d_ls_2984 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
d_ls_2984 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.es
d_es_2986 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_es_2986 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.fut
d_fut_2988 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
d_fut_2988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasEpochState
d_HasEpochState_2996 a0 a1 a2 a3 = ()
newtype T_HasEpochState_2996
  = C_constructor_3006 (AgdaAny -> T_EpochState_2968)
-- Ledger.Conway.Specification.Epoch.HasEpochState.EpochStateOf
d_EpochStateOf_3004 ::
  T_HasEpochState_2996 -> AgdaAny -> T_EpochState_2968
d_EpochStateOf_3004 v0
  = case coe v0 of
      C_constructor_3006 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.EpochStateOf
d_EpochStateOf_3010 ::
  T_HasEpochState_2996 -> AgdaAny -> T_EpochState_2968
d_EpochStateOf_3010 v0 = coe d_EpochStateOf_3004 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLState-EpochState
d_HasLState'45'EpochState_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726
d_HasLState'45'EpochState_3012 ~v0 ~v1
  = du_HasLState'45'EpochState_3012
du_HasLState'45'EpochState_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726
du_HasLState'45'EpochState_3012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2736
      (coe (\ v0 -> d_ls_2984 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-EpochState
d_HasEnactState'45'EpochState_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072
d_HasEnactState'45'EpochState_3014 ~v0 ~v1
  = du_HasEnactState'45'EpochState_3014
du_HasEnactState'45'EpochState_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072
du_HasEnactState'45'EpochState_3014
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1082
      (coe (\ v0 -> d_es_2986 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasDeposits-EpochState
d_HasDeposits'45'EpochState_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'EpochState_3016 ~v0 ~v1
  = du_HasDeposits'45'EpochState_3016
du_HasDeposits'45'EpochState_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'EpochState_3016
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1078
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2750)
              (d_ls_2984 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasTreasury-EpochState
d_HasTreasury'45'EpochState_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_3018 ~v0 ~v1
  = du_HasTreasury'45'EpochState_3018
du_HasTreasury'45'EpochState_3018 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'EpochState_3018
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
              (coe d_acnt_2980 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasReserves-EpochState
d_HasReserves'45'EpochState_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_3020 ~v0 ~v1
  = du_HasReserves'45'EpochState_3020
du_HasReserves'45'EpochState_3020 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'EpochState_3020
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_70
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
              (coe d_acnt_2980 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasPParams-EpochState
d_HasPParams'45'EpochState_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'EpochState_3022 ~v0 ~v1
  = du_HasPParams'45'EpochState_3022
du_HasPParams'45'EpochState_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'EpochState_3022
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_428
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1088)
              (d_es_2986 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2550
d_HasRatifyState'45'EpochState_3024 ~v0 ~v1
  = du_HasRatifyState'45'EpochState_3024
du_HasRatifyState'45'EpochState_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2550
du_HasRatifyState'45'EpochState_3024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2560
      (coe (\ v0 -> d_fut_2988 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasPState-EpochState
d_HasPState'45'EpochState_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'EpochState_3026 ~v0 ~v1
  = du_HasPState'45'EpochState_3026
du_HasPState'45'EpochState_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'EpochState_3026
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1408
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1474)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2748)
                 (d_ls_2984 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_PoolDelegatedStake_3028 = erased
-- Ledger.Conway.Specification.Epoch.NewEpochState
d_NewEpochState_3030 a0 a1 = ()
data T_NewEpochState_3030
  = C_constructor_3048 AgdaAny T_EpochState_2968
                       (Maybe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch.NewEpochState.lastEpoch
d_lastEpoch_3040 :: T_NewEpochState_3030 -> AgdaAny
d_lastEpoch_3040 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.epochState
d_epochState_3042 :: T_NewEpochState_3030 -> T_EpochState_2968
d_epochState_3042 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.ru
d_ru_3044 ::
  T_NewEpochState_3030 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780
d_ru_3044 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.pd
d_pd_3046 ::
  T_NewEpochState_3030 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3046 v0
  = case coe v0 of
      C_constructor_3048 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasNewEpochState
d_HasNewEpochState_3054 a0 a1 a2 a3 = ()
newtype T_HasNewEpochState_3054
  = C_constructor_3064 (AgdaAny -> T_NewEpochState_3030)
-- Ledger.Conway.Specification.Epoch.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_3062 ::
  T_HasNewEpochState_3054 -> AgdaAny -> T_NewEpochState_3030
d_NewEpochStateOf_3062 v0
  = case coe v0 of
      C_constructor_3064 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.NewEpochStateOf
d_NewEpochStateOf_3068 ::
  T_HasNewEpochState_3054 -> AgdaAny -> T_NewEpochState_3030
d_NewEpochStateOf_3068 v0 = coe d_NewEpochStateOf_3062 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch
d_HasLastEpoch_3074 a0 a1 a2 a3 = ()
newtype T_HasLastEpoch_3074
  = C_constructor_3084 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch.LastEpochOf
d_LastEpochOf_3082 :: T_HasLastEpoch_3074 -> AgdaAny -> AgdaAny
d_LastEpochOf_3082 v0
  = case coe v0 of
      C_constructor_3084 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.LastEpochOf
d_LastEpochOf_3088 :: T_HasLastEpoch_3074 -> AgdaAny -> AgdaAny
d_LastEpochOf_3088 v0 = coe d_LastEpochOf_3082 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_HasLastEpoch_3074
d_HasLastEpoch'45'NewEpochState_3090 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_3090
du_HasLastEpoch'45'NewEpochState_3090 :: T_HasLastEpoch_3074
du_HasLastEpoch'45'NewEpochState_3090
  = coe C_constructor_3084 (coe (\ v0 -> d_lastEpoch_3040 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_HasEpochState_2996
d_HasEpochState'45'NewEpochState_3092 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_3092
du_HasEpochState'45'NewEpochState_3092 :: T_HasEpochState_2996
du_HasEpochState'45'NewEpochState_3092
  = coe C_constructor_3006 (coe (\ v0 -> d_epochState_3042 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072
d_HasEnactState'45'NewEpochState_3094 ~v0 ~v1
  = du_HasEnactState'45'NewEpochState_3094
du_HasEnactState'45'NewEpochState_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1072
du_HasEnactState'45'NewEpochState_3094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1082
      (coe (\ v0 -> d_es_2986 (coe d_epochState_3042 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_3096 ~v0 ~v1
  = du_Hastreasury'45'NewEpochState_3096
du_Hastreasury'45'NewEpochState_3096 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_Hastreasury'45'NewEpochState_3096
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
              (coe d_acnt_2980 (coe d_epochState_3042 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasLState-NewEpochState
d_HasLState'45'NewEpochState_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726
d_HasLState'45'NewEpochState_3098 ~v0 ~v1
  = du_HasLState'45'NewEpochState_3098
du_HasLState'45'NewEpochState_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2726
du_HasLState'45'NewEpochState_3098
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2736
      (coe (\ v0 -> d_ls_2984 (coe d_epochState_3042 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
d_HasGovState'45'NewEpochState_3100 ~v0 ~v1
  = du_HasGovState'45'NewEpochState_3100
du_HasGovState'45'NewEpochState_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
du_HasGovState'45'NewEpochState_3100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2430
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2428
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2746)
              (d_ls_2984 (coe d_epochState_3042 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
d_HasCertState'45'NewEpochState_3102 ~v0 ~v1
  = du_HasCertState'45'NewEpochState_3102
du_HasCertState'45'NewEpochState_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
du_HasCertState'45'NewEpochState_3102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1448
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2748)
              (d_ls_2984 (coe d_epochState_3042 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'NewEpochState_3104 ~v0 ~v1
  = du_HasDReps'45'NewEpochState_3104
du_HasDReps'45'NewEpochState_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
du_HasDReps'45'NewEpochState_3104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1132
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1480)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2748)
                 (d_ls_2984 (coe d_epochState_3042 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'NewEpochState_3106 ~v0 ~v1
  = du_HasRewards'45'NewEpochState_3106
du_HasRewards'45'NewEpochState_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'NewEpochState_3106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1180
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1478)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2748)
                 (d_ls_2984 (coe d_epochState_3042 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'NewEpochState_3108 ~v0 ~v1
  = du_HasPParams'45'NewEpochState_3108
du_HasPParams'45'NewEpochState_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'NewEpochState_3108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_428
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1088)
              (d_es_2986 (coe d_epochState_3042 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_3110 ~v0 ~v1
  = du_HasCast'45'EpochState_3110
du_HasCast'45'EpochState_3110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_3110
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
                                 (2968 :: Integer) (4112555248803407823 :: Integer)
                                 "Ledger.Conway.Specification.Epoch.EpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (34 :: Integer) (4112555248803407823 :: Integer) "_.Acnt"
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
                                    (2968 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2710 :: Integer) (4112555248803407823 :: Integer)
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2968 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2492 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2968 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2238 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch._.EnactState"
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
                                             (2968 :: Integer) (4112555248803407823 :: Integer)
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
                                             (2592 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990))
-- Ledger.Conway.Specification.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_3112 ~v0 ~v1
  = du_HasCast'45'NewEpochState_3112
du_HasCast'45'NewEpochState_3112 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_3112
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
                                 (3030 :: Integer) (4112555248803407823 :: Integer)
                                 "Ledger.Conway.Specification.Epoch.NewEpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (168 :: Integer) (4112555248803407823 :: Integer) "_.Epoch"
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
                                    (3030 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2968 :: Integer) (4112555248803407823 :: Integer)
                                    "Ledger.Conway.Specification.Epoch.EpochState"
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
                                       (3030 :: Integer) (4112555248803407823 :: Integer)
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
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
                                                (20 :: Integer) (10880583612240331187 :: Integer)
                                                "Agda.Primitive.lzero"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                   (2700 :: Integer)
                                                   (4112555248803407823 :: Integer)
                                                   "Ledger.Conway.Specification.Epoch._.RewardUpdate"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                          (3030 :: Integer) (4112555248803407823 :: Integer)
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
                                          (3028 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_3048))
-- Ledger.Conway.Specification.Epoch.toRwdAddr
d_toRwdAddr_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_toRwdAddr_3114 v0 ~v1 v2 = du_toRwdAddr_3114 v0 v2
du_toRwdAddr_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
du_toRwdAddr_3114 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Specification.Epoch.getStakeCred
d_getStakeCred_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_3118 ~v0 ~v1 v2 = du_getStakeCred_3118 v2
du_getStakeCred_3118 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_3118 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.createRUpd
d_createRUpd_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780
d_createRUpd_3122 v0 ~v1 v2 v3 v4 v5
  = du_createRUpd_3122 v0 v2 v3 v4 v5
du_createRUpd_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780
du_createRUpd_3122 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2814
      (coe du_Δt'8321'_3164 (coe v0) (coe v1) (coe v2) (coe v3))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__284
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__302 (coe (0 :: Integer))
            (coe du_Δr'8321'_3158 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_Δr'8322'_3172 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_3142 (coe v3)))
      (coe du_rs_3170 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du_Δt'45'nonneg_3236 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δf'45'nonpos_3238 (coe v3))
-- Ledger.Conway.Specification.Epoch._.prevPp
d_prevPp_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_prevPp_3136 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_prevPp_3136 v4
du_prevPp_3136 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_prevPp_3136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1088)
      (d_es_2986 (coe v0))
-- Ledger.Conway.Specification.Epoch._.reserves
d_reserves_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_reserves_3138 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_reserves_3138 v4
du_reserves_3138 :: T_EpochState_2968 -> Integer
du_reserves_3138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe d_acnt_2980 (coe v0))
-- Ledger.Conway.Specification.Epoch._.pstakego
d_pstakego_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
d_pstakego_3140 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pstakego_3140 v4
du_pstakego_3140 ::
  T_EpochState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816
du_pstakego_3140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2888
      (coe d_ss_2982 (coe v0))
-- Ledger.Conway.Specification.Epoch._.feeSS
d_feeSS_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_feeSS_3142 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_feeSS_3142 v4
du_feeSS_3142 :: T_EpochState_2968 -> Integer
du_feeSS_3142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2890
      (coe d_ss_2982 (coe v0))
-- Ledger.Conway.Specification.Epoch._.stake
d_stake_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_3144 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_stake_3144 v4
du_stake_3144 ::
  T_EpochState_2968 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stake_3144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2824
      (coe du_pstakego_3140 (coe v0))
-- Ledger.Conway.Specification.Epoch._.delegs
d_delegs_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegs_3146 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_delegs_3146 v4
du_delegs_3146 ::
  T_EpochState_2968 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegs_3146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2826
      (coe du_pstakego_3140 (coe v0))
-- Ledger.Conway.Specification.Epoch._.poolParams
d_poolParams_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParams_3148 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_poolParams_3148 v4
du_poolParams_3148 ::
  T_EpochState_2968 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolParams_3148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2828
      (coe du_pstakego_3140 (coe v0))
-- Ledger.Conway.Specification.Epoch._.blocksMade
d_blocksMade_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_blocksMade_3150 v0 ~v1 ~v2 v3 ~v4 ~v5 = du_blocksMade_3150 v0 v3
du_blocksMade_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_blocksMade_3150 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Conway.Specification.Epoch._.ρ
d_ρ_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ρ_3154 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ρ_3154 v4
du_ρ_3154 ::
  T_EpochState_2968 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ρ_3154 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
         (coe du_prevPp_3136 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.η
d_η_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_η_3156 v0 ~v1 v2 v3 ~v4 ~v5 = du_η_3156 v0 v2 v3
du_η_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_η_3156 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe du_blocksMade_3150 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.Δr₁
d_Δr'8321'_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_Δr'8321'_3158 v0 ~v1 v2 v3 v4 ~v5 = du_Δr'8321'_3158 v0 v2 v3 v4
du_Δr'8321'_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer
du_Δr'8321'_3158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3156 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3154 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3138 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot
d_rewardPot_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_rewardPot_3160 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot_3160 v0 v2 v3 v4
du_rewardPot_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer
du_rewardPot_3160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__284
      (coe du_feeSS_3142 (coe v3))
      (coe du_Δr'8321'_3158 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.τ
d_τ_3162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_τ_3162 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_τ_3162 v4
du_τ_3162 ::
  T_EpochState_2968 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_τ_3162 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
         (coe du_prevPp_3136 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.Δt₁
d_Δt'8321'_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_Δt'8321'_3164 v0 ~v1 v2 v3 v4 ~v5 = du_Δt'8321'_3164 v0 v2 v3 v4
du_Δt'8321'_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer
du_Δt'8321'_3164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3160 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe du_τ_3162 (coe v3)))
-- Ledger.Conway.Specification.Epoch._.R
d_R_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_R_3166 v0 ~v1 v2 v3 v4 ~v5 = du_R_3166 v0 v2 v3 v4
du_R_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer
du_R_3166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_rewardPot_3160 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δt'8321'_3164 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.circulation
d_circulation_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_circulation_3168 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_circulation_3168 v4 v5
du_circulation_3168 :: T_EpochState_2968 -> Integer -> Integer
du_circulation_3168 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
      (coe du_reserves_3138 (coe v0))
-- Ledger.Conway.Specification.Epoch._.rs
d_rs_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3170 v0 ~v1 v2 v3 v4 v5 = du_rs_3170 v0 v2 v3 v4 v5
du_rs_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rs_3170 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2710
      (coe v0) (coe du_prevPp_3136 (coe v3)) (coe v2)
      (coe
         MAlonzo.Code.Prelude.d_posPart_58
         (coe du_R_3166 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe du_poolParams_3148 (coe v3)) (coe du_stake_3144 (coe v3))
      (coe du_delegs_3146 (coe v3))
      (coe du_circulation_3168 (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.Δr₂
d_Δr'8322'_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
d_Δr'8322'_3172 v0 ~v1 v2 v3 v4 v5
  = du_Δr'8322'_3172 v0 v2 v3 v4 v5
du_Δr'8322'_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> Integer -> Integer
du_Δr'8322'_3172 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_R_3166 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v5 -> v5))
         (coe du_rs_3170 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch._.lemmaFlow
d_lemmaFlow_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemmaFlow_3184 = erased
-- Ledger.Conway.Specification.Epoch._.flowConservation
d_flowConservation_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3186 = erased
-- Ledger.Conway.Specification.Epoch._.÷₀-0≤⇒0≤
d_'247''8320''45'0'8804''8658'0'8804'_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''8320''45'0'8804''8658'0'8804'_3194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7 ~v8 ~v9
  = du_'247''8320''45'0'8804''8658'0'8804'_3194 v6 v7
du_'247''8320''45'0'8804''8658'0'8804'_3194 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''8320''45'0'8804''8658'0'8804'_3194 v0 v1
  = let v2
          = MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792
              (coe v1)
              (coe
                 MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                 (coe (0 :: Integer))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
                          (coe
                             MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                             (coe (0 :: Integer))))
                else coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'247''45'0'8804''8658'0'8804'_108
                          (coe v0) (coe v1))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Epoch._.η-nonneg
d_η'45'nonneg_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_η'45'nonneg_3228 v0 ~v1 v2 v3 ~v4 ~v5
  = du_η'45'nonneg_3228 v0 v2 v3
du_η'45'nonneg_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_η'45'nonneg_3228 v0 v1 v2
  = coe
      du_'247''8320''45'0'8804''8658'0'8804'_3194
      (let v3 = coe du_blocksMade_3150 (coe v0) (coe v2) in
       coe (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v3)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.min1η-nonneg
d_min1η'45'nonneg_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_min1η'45'nonneg_3230 v0 ~v1 v2 v3 ~v4 ~v5
  = du_min1η'45'nonneg_3230 v0 v2 v3
du_min1η'45'nonneg_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_min1η'45'nonneg_3230 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3394
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646)
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8851''45'operator_5716)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_η_3156 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
      (coe du_η'45'nonneg_3228 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.Δr₁-nonneg
d_Δr'8321''45'nonneg_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δr'8321''45'nonneg_3232 v0 ~v1 v2 v3 v4 ~v5
  = du_Δr'8321''45'nonneg_3232 v0 v2 v3 v4
du_Δr'8321''45'nonneg_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δr'8321''45'nonneg_3232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3156 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3154 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3138 (coe v3))))
      (coe
         MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'42''45'0'8804''8658'0'8804'_68
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3156 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3154 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_3138 (coe v3)))
         (coe
            MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_fromℕ'45'0'8804'_60
            (coe du_reserves_3138 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot-nonneg
d_rewardPot'45'nonneg_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_rewardPot'45'nonneg_3234 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot'45'nonneg_3234 v0 v2 v3 v4
du_rewardPot'45'nonneg_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_rewardPot'45'nonneg_3234 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4632
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
      (coe du_feeSS_3142 (coe v3)) (coe (0 :: Integer))
      (coe du_Δr'8321'_3158 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_nonNegative'8315''185'_3338)
      (coe
         du_Δr'8321''45'nonneg_3232 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt-nonneg
d_Δt'45'nonneg_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonneg_3236 v0 ~v1 v2 v3 v4 ~v5
  = du_Δt'45'nonneg_3236 v0 v2 v3 v4
du_Δt'45'nonneg_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δt'45'nonneg_3236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3160 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
               (coe du_prevPp_3136 (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.du_UnitInterval'45''42''45'0'8804'_174
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3160 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
            (coe du_prevPp_3136 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.Δf-nonpos
d_Δf'45'nonpos_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2968 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpos_3238 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_Δf'45'nonpos_3238 v4
du_Δf'45'nonpos_3238 ::
  T_EpochState_2968 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δf'45'nonpos_3238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe
            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2954 v3))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_3142 (coe v0)))
      (0 :: Integer)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v1 v2 v3 v4 v5 -> v5)
         (MAlonzo.Code.Data.Integer.Base.d__'45'__302
            (coe (0 :: Integer)) (coe du_feeSS_3142 (coe v0)))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__260
            (coe du_feeSS_3142 (coe v0)))
         (0 :: Integer)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe
                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
               (\ v1 v2 v3 v4 v5 ->
                  coe
                    MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3066
                    v4 v5))
            (MAlonzo.Code.Data.Integer.Base.d_'45'__260
               (coe du_feeSS_3142 (coe v0)))
            (0 :: Integer) (0 :: Integer)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe
                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908))
               (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3380
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2890
                  (coe d_ss_2982 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
         erased)
-- Ledger.Conway.Specification.Epoch.applyRUpd
d_applyRUpd_3244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  T_EpochState_2968 -> T_EpochState_2968
d_applyRUpd_3244 v0 ~v1 v2 v3 = du_applyRUpd_3244 v0 v2 v3
du_applyRUpd_3244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  T_EpochState_2968 -> T_EpochState_2968
du_applyRUpd_3244 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2720 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 v13 v14 v15 v16
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1356 v17 v18 v19
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1316 v20 v21 v22
                                           -> coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                              (2968 :: Integer)
                                                                              (4112555248803407823 ::
                                                                                 Integer)
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
                                                                              (34 :: Integer)
                                                                              (4112555248803407823 ::
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
                                                                                 (2968 :: Integer)
                                                                                 (4112555248803407823 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                 (2710 :: Integer)
                                                                                 (4112555248803407823 ::
                                                                                    Integer)
                                                                                 "Ledger.Conway.Specification.Epoch._.Snapshots"
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
                                                                                    (2968 ::
                                                                                       Integer)
                                                                                    (4112555248803407823 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                    (2492 ::
                                                                                       Integer)
                                                                                    (4112555248803407823 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Epoch._.LState"
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
                                                                                       (2968 ::
                                                                                          Integer)
                                                                                       (4112555248803407823 ::
                                                                                          Integer)
                                                                                       "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                       (2238 ::
                                                                                          Integer)
                                                                                       (4112555248803407823 ::
                                                                                          Integer)
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
                                                                                          (2968 ::
                                                                                             Integer)
                                                                                          (4112555248803407823 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Epoch.EpochState"
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
                                                                                          (2592 ::
                                                                                             Integer)
                                                                                          (4112555248803407823 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Epoch._.RatifyState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                      (coe
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2990)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                    (162 :: Integer)
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
                                                                                       (162 ::
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172)))
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2798
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_3296 (coe v0)
                                                                  (coe v1) (coe v22))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2800
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v4)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                          (2706 ::
                                                                                             Integer)
                                                                                          (11007941034284287304 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                          (2074 ::
                                                                                             Integer)
                                                                                          (11007941034284287304 ::
                                                                                             Integer)
                                                                                          "Ledger.Conway.Specification.Ledger._.UTxOState"
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
                                                                                             (2706 ::
                                                                                                Integer)
                                                                                             (11007941034284287304 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                             (1902 ::
                                                                                                Integer)
                                                                                             (11007941034284287304 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Ledger._.GovState"
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
                                                                                                (2706 ::
                                                                                                   Integer)
                                                                                                (11007941034284287304 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Ledger.LState"
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
                                                                                                (2298 ::
                                                                                                   Integer)
                                                                                                (11007941034284287304 ::
                                                                                                   Integer)
                                                                                                "Ledger.Conway.Specification.Ledger._.CertState"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2720)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                (2326 ::
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
                                                                                                (542 ::
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
                                                                                                   (2326 ::
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
                                                                                                      (2326 ::
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
                                                                                                      (1944 ::
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
                                                                                                         (2326 ::
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
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2344)))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2802
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v15) (coe v16)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v11)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                   (1342 ::
                                                                                                      Integer)
                                                                                                   (3005244792873517680 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                   (1302 ::
                                                                                                      Integer)
                                                                                                   (3005244792873517680 ::
                                                                                                      Integer)
                                                                                                   "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                      (1342 ::
                                                                                                         Integer)
                                                                                                      (3005244792873517680 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                      (3005244792873517680 ::
                                                                                                         Integer)
                                                                                                      "Ledger.Conway.Specification.Certs.PState"
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
                                                                                                         (1342 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.CertState"
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
                                                                                                         (1330 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.GState"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1356)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                                                                                         (1302 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                         (884 ::
                                                                                                            Integer)
                                                                                                         (3005244792873517680 ::
                                                                                                            Integer)
                                                                                                         "Ledger.Conway.Specification.Certs._.VoteDelegs"
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
                                                                                                            (1302 ::
                                                                                                               Integer)
                                                                                                            (3005244792873517680 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                            (1100 ::
                                                                                                               Integer)
                                                                                                            (3005244792873517680 ::
                                                                                                               Integer)
                                                                                                            "Ledger.Conway.Specification.Certs.StakeDelegs"
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
                                                                                                               (1302 ::
                                                                                                                  Integer)
                                                                                                               (3005244792873517680 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Specification.Certs.DState"
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
                                                                                                               (1096 ::
                                                                                                                  Integer)
                                                                                                               (3005244792873517680 ::
                                                                                                                  Integer)
                                                                                                               "Ledger.Conway.Specification.Certs.Rewards"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1316)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v20)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v21)
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                             (coe
                                                                                                v0))))
                                                                                    v22
                                                                                    (coe
                                                                                       du_regRU_3292
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe
                                                                                          v22))))))
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
-- Ledger.Conway.Specification.Epoch._.regRU
d_regRU_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_3292 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             v13 ~v14 ~v15 ~v16 ~v17
  = du_regRU_3292 v0 v2 v13
du_regRU_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_3292 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2804
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU
d_unregRU_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_3294 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU_3294 v0 v2 v13
du_unregRU_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_3294 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2804
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU'
d_unregRU''_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  Integer
d_unregRU''_3296 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU''_3296 v0 v2 v13
du_unregRU''_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_3296 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_3294 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.getOrphans
d_getOrphans_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_3300 v0 ~v1 v2 v3 = du_getOrphans_3300 v0 v2 v3
du_getOrphans_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_3300 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_3310 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
-- Ledger.Conway.Specification.Epoch._.step
d_step_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_3310 v0 ~v1 v2 ~v3 v4 = du_step_3310 v0 v2 v4
du_step_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_3310 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Data.List.Base.du_partition_680
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2772
                                 (coe v0) (coe v1) (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_880
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1012
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                      (coe v4))))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe
                   MAlonzo.Code.Data.List.Base.du_partition_680
                   (coe
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2772
                              (coe v0) (coe v1) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_880
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1012
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._⁻¹ʳ
d__'8315''185''691'_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8315''185''691'_3336 ~v0 ~v1 ~v2 v3
  = du__'8315''185''691'_3336 v3
du__'8315''185''691'_3336 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8315''185''691'_3336 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_400
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370) v0
-- Ledger.Conway.Specification.Epoch._∘ʳ_
d__'8728''691'__3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8728''691'__3352 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du__'8728''691'__3352 v4 v5 v6
du__'8728''691'__3352 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8728''691'__3352 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_map_400
              (MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 v2)))
      (coe v1)
-- Ledger.Conway.Specification.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_3368 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_3368 v0 v2
du_calculatePoolDelegatedStake_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_3368 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0)))))
      (coe du_sd_3378 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2828
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_3376 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_3376 v2
du_stakeCredentialsPerPool_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_3376 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_400
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2826
            (coe v0)))
-- Ledger.Conway.Specification.Epoch._.sd
d_sd_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_3378 v0 ~v1 v2 = du_sd_3378 v0 v2
du_sd_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_3378 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_map_400
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                           (coe v0))))
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                        (coe v0)))))
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2824
                             (coe v1))))))
            (coe du_stakeCredentialsPerPool_3376 (coe v1))))
-- Ledger.Conway.Specification.Epoch.mkStakeDistrs
d_mkStakeDistrs_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2486
d_mkStakeDistrs_3380 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_3380 v0 v2 v3 v4 v5
du_mkStakeDistrs_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2486
du_mkStakeDistrs_3380 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2496
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1030
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v0)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
            (coe
               MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_map_400
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                          (\ v6 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                           (coe v0)))))
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                (coe
                                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                   (coe
                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2824
                                   (coe v1))
                                (coe du_stakeFromGADeposits_3394 (coe v0) (coe v2) (coe v3)))))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_400
                  (MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Product.Base.du_swap_370)
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))))))
      (coe du_calculatePoolDelegatedStake_3368 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Epoch._.stakeFromGADeposits
d_stakeFromGADeposits_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_3394 v0 ~v1 ~v2 v3 v4 ~v5
  = du_stakeFromGADeposits_3394 v0 v3 v4
du_stakeFromGADeposits_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeFromGADeposits_3394 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_3400 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1264
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1060
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1060
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2)))))))
         (coe du_govSt''_3400 (coe v1)))
-- Ledger.Conway.Specification.Epoch._._.govSt'
d_govSt''_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3400 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_govSt''_3400 v3
du_govSt''_3400 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3400 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_400
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe
            (\ v1 ->
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
                 (coe v1))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_430
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v0))
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0
d_EPOCH'45'Updates0_3452 a0 a1 = ()
data T_EPOCH'45'Updates0_3452
  = C_EPOCHUpdates0_3478 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
                         [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                         Integer
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.es
d_es_3466 ::
  T_EPOCH'45'Updates0_3452 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_es_3466 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.govSt'
d_govSt''_3468 ::
  T_EPOCH'45'Updates0_3452 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3468 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.payout
d_payout_3470 ::
  T_EPOCH'45'Updates0_3452 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3470 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.gState'
d_gState''_3472 ::
  T_EPOCH'45'Updates0_3452 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState''_3472 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.utxoSt'
d_utxoSt''_3474 ::
  T_EPOCH'45'Updates0_3452 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt''_3474 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.totWithdrawals
d_totWithdrawals_3476 :: T_EPOCH'45'Updates0_3452 -> Integer
d_totWithdrawals_3476 v0
  = case coe v0 of
      C_EPOCHUpdates0_3478 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates0
d_EPOCH'45'updates0_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  T_EPOCH'45'Updates0_3452
d_EPOCH'45'updates0_3480 v0 ~v1 v2 v3
  = du_EPOCH'45'updates0_3480 v0 v2 v3
du_EPOCH'45'updates0_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  T_EPOCH'45'Updates0_3452
du_EPOCH'45'updates0_3480 v0 v1 v2
  = coe
      C_EPOCHUpdates0_3478 (coe du_es_3514 (coe v1))
      (coe du_govSt''_3524 (coe v0) (coe v1) (coe v2))
      (coe du_payout_3546 (coe v0) (coe v1) (coe v2))
      (coe du_gState''_3548 (coe v0) (coe v1) (coe v2))
      (coe du_utxoSt''_3552 (coe v0) (coe v1) (coe v2))
      (coe du_totWithdrawals_3554 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Epoch._.es
d_es_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_es_3514 ~v0 ~v1 v2 ~v3 = du_es_3514 v2
du_es_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
du_es_3514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1066
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1056
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1058
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1060
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1062
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Epoch._.tmpGovSt
d_tmpGovSt_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_3516 v0 ~v1 v2 v3 = du_tmpGovSt_3516 v0 v2 v3
du_tmpGovSt_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_tmpGovSt_3516 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_502
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_400
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2540
                       (coe v1)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2716
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.orphans
d_orphans_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_3520 v0 ~v1 v2 v3 = du_orphans_3520 v0 v2 v3
du_orphans_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_orphans_3520 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_fromList_430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du_getOrphans_3300 (coe v0) (coe du_es_3514 (coe v1))
         (coe du_tmpGovSt_3516 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Epoch._.removed'
d_removed''_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_3522 v0 ~v1 v2 v3 = du_removed''_3522 v0 v2 v3
du_removed''_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed''_3522 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2540
         (coe v1))
      (coe du_orphans_3520 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govSt'
d_govSt''_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3524 v0 ~v1 v2 v3 = du_govSt''_3524 v0 v2 v3
du_govSt''_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3524 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_filter_112
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
           (coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                    (coe v0))
                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_502
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_400
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe du_removed''_3522 (coe v0) (coe v1) (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2716
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.removedGovActions
d_removedGovActions_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3528 v0 ~v1 v2 v3
  = du_removedGovActions_3528 v0 v2 v3
du_removedGovActions_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removedGovActions_3528 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_map_400
              (MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                   (coe v4))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1060
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
      (coe du_removed''_3522 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govActionReturns
d_govActionReturns_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_3538 v0 ~v1 v2 v3
  = du_govActionReturns_3538 v0 v2 v3
du_govActionReturns_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionReturns_3538 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe du_removedGovActions_3528 (coe v0) (coe v1) (coe v2))))
-- Ledger.Conway.Specification.Epoch._.payout
d_payout_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3546 v0 ~v1 v2 v3 = du_payout_3546 v0 v2 v3
du_payout_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_payout_3546 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe du_govActionReturns_3538 (coe v0) (coe v1) (coe v2))
      (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1064
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.gState'
d_gState''_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState''_3548 v0 ~v1 v2 v3 = du_gState''_3548 v0 v2 v3
du_gState''_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
du_gState''_3548 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
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
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1330 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.GState"
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
                                    (1088 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.DReps"
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
                                       (1330 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.GState"
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
                                       (180 :: Integer) (9254951203007797098 :: Integer)
                                       "abstract-set-theory.FiniteSetTheory._.Map"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.RightAssoc
                                          (MAlonzo.RTE.Related (1.0 :: Double)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                (40 :: Integer) (3005244792873517680 :: Integer)
                                                "_.Credential"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                         (284 :: Integer)
                                                         (753823221557309123 :: Integer)
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
                                                                  (1166 :: Integer)
                                                                  (7805089389717466778 :: Integer)
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
                                                                     (coe (1 :: Integer))
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
                                                            (26 :: Integer)
                                                            (14321319370142338143 :: Integer)
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
                                                                        (206 :: Integer)
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
                                                                                 (596 :: Integer)
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
                                                               (210 :: Integer)
                                                               (14321319370142338143 :: Integer)
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
                                                                        (596 :: Integer)
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
                                                                           (coe (1 :: Integer))
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
                                                               (40 :: Integer)
                                                               (3005244792873517680 :: Integer)
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
                                                                        (284 :: Integer)
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
                                                                                 (1166 :: Integer)
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
                                                                           (26 :: Integer)
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
                                                                                                (596 ::
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
                                                                              (210 :: Integer)
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
                                                                                       (596 ::
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
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1340)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
            (coe
               MAlonzo.Code.Data.List.Base.du_null_262
               (coe du_govSt''_3524 (coe v0) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Level.C_lift_20
               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
                                (coe v0)))
                          (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1468)
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2718
                             (coe v2))))))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1468)
                    (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2718
                          (coe v2))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1338
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2718
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1096
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1056
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
                     (coe v1))))))
-- Ledger.Conway.Specification.Epoch._.utxoSt'
d_utxoSt''_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt''_3552 v0 ~v1 v2 v3 = du_utxoSt''_3552 v0 v2 v3
du_utxoSt''_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
du_utxoSt''_3552 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
               (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe du_removedGovActions_3528 (coe v0) (coe v1) (coe v2))))
      (coe (0 :: Integer))
-- Ledger.Conway.Specification.Epoch._.totWithdrawals
d_totWithdrawals_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  Integer
d_totWithdrawals_3554 v0 ~v1 v2 ~v3 = du_totWithdrawals_3554 v0 v2
du_totWithdrawals_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  Integer
du_totWithdrawals_3554 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1064
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2538
            (coe v1)))
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates
d_EPOCH'45'Updates_3558 a0 a1 = ()
data T_EPOCH'45'Updates_3558
  = C_EPOCHUpdates_3584 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.es
d_es_3572 ::
  T_EPOCH'45'Updates_3558 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_es_3572 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.govSt'
d_govSt''_3574 ::
  T_EPOCH'45'Updates_3558 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3574 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.dState''
d_dState''''_3576 ::
  T_EPOCH'45'Updates_3558 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState''''_3576 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.gState'
d_gState''_3578 ::
  T_EPOCH'45'Updates_3558 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState''_3578 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.utxoSt'
d_utxoSt''_3580 ::
  T_EPOCH'45'Updates_3558 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt''_3580 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.acnt''
d_acnt''''_3582 ::
  T_EPOCH'45'Updates_3558 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt''''_3582 v0
  = case coe v0 of
      C_EPOCHUpdates_3584 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates
d_EPOCH'45'updates_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates_3558
d_EPOCH'45'updates_3586 v0 ~v1 v2 v3 v4 v5
  = du_EPOCH'45'updates_3586 v0 v2 v3 v4 v5
du_EPOCH'45'updates_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates_3558
du_EPOCH'45'updates_3586 v0 v1 v2 v3 v4
  = coe
      C_EPOCHUpdates_3584
      (coe d_es_3466 (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))
      (coe d_govSt''_3468 (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))
      (coe du_dState''''_3604 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe d_gState''_3472 (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))
      (coe d_utxoSt''_3474 (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))
      (coe du_acnt''''_3608 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.u0
d_u0_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates0_3452
d_u0_3600 v0 ~v1 v2 v3 ~v4 ~v5 = du_u0_3600 v0 v2 v3
du_u0_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  T_EPOCH'45'Updates0_3452
du_u0_3600 v0 v1 v2
  = coe du_EPOCH'45'updates0_3480 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Epoch._.refunds
d_refunds_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_3602 v0 ~v1 v2 v3 v4 ~v5 = du_refunds_3602 v0 v2 v3 v4
du_refunds_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refunds_3602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_payout_3470 (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                          (coe v0)))))
              (coe v4)
              (let v5
                     = MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
               coe
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          d_payout_3470 (coe du_u0_3600 (coe v0) (coe v1) (coe v2))))))))
      (coe du_toRwdAddr_3114 (coe v0))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1314
            (coe v3)))
-- Ledger.Conway.Specification.Epoch._.dState''
d_dState''''_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState''''_3604 v0 ~v1 v2 v3 v4 ~v5
  = du_dState''''_3604 v0 v2 v3 v4
du_dState''''_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
du_dState''''_3604 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1316
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1310
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1312
         (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1314
            (coe v3))
         (coe du_refunds_3602 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.unclaimed
d_unclaimed_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_unclaimed_3606 v0 ~v1 v2 v3 v4 ~v5
  = du_unclaimed_3606 v0 v2 v3 v4
du_unclaimed_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  Integer
du_unclaimed_3606 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe d_payout_3470 (coe du_u0_3600 (coe v0) (coe v1) (coe v2))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_refunds_3602 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.acnt''
d_acnt''''_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt''''_3608 v0 ~v1 v2 v3 v4 v5
  = du_acnt''''_3608 v0 v2 v3 v4 v5
du_acnt''''_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt''''_3608 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172
      (coe
         addInt
         (coe
            addInt (coe du_unclaimed_3606 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2374)
               (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2714
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
            (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
               (coe v4))
            (d_totWithdrawals_3476
               (coe du_u0_3600 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
         (coe v4))
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3610 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__3610
  = C_EPOCH_3642 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2906
                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2418
-- Ledger.Conway.Specification.Epoch._.ccHotKeys
d_ccHotKeys_3638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3638 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_ccHotKeys_3638 v2
du_ccHotKeys_3638 ::
  T_GeneralizeTel_104417 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_3638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2754)
         (d_'46'generalizedField'45'ls_104405 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.dreps
d_dreps_3640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3640 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_dreps_3640 v2
du_dreps_3640 ::
  T_GeneralizeTel_104417 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_3640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2754)
         (d_'46'generalizedField'45'ls_104405 (coe v0)))
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3644 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3644
  = C_NEWEPOCH'45'New_3652 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_3654 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_3660 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_104403 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
d_'46'generalizedField'45'fut_104403 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_104405 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
d_'46'generalizedField'45'ls_104405 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-e
d_'46'generalizedField'45'e_104407 ::
  T_GeneralizeTel_104417 -> AgdaAny
d_'46'generalizedField'45'e_104407 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_104409 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
d_'46'generalizedField'45'ss''_104409 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_104411 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
d_'46'generalizedField'45'fut''_104411 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_104413 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
d_'46'generalizedField'45'ss_104413 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_104415 ::
  T_GeneralizeTel_104417 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_'46'generalizedField'45'es'8320'_104415 v0
  = case coe v0 of
      C_mkGeneralizeTel_104419 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.GeneralizeTel
d_GeneralizeTel_104417 a0 a1 = ()
data T_GeneralizeTel_104417
  = C_mkGeneralizeTel_104419 MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2706
                             AgdaAny
                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2530
                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2874
                             MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
