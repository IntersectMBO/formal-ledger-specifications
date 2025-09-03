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
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances
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
d_Credential_62 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_96 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
            (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
            (coe v0)))
-- _.Epoch
d_Epoch_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_162 = erased
-- _.GovActionID
d_GovActionID_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_174 = erased
-- _.GovActionState
d_GovActionState_176 a0 = ()
-- _.HasPParams
d_HasPParams_226 a0 a1 a2 = ()
-- _.Hasreserves
d_Hasreserves_262 a0 a1 a2 = ()
-- _.Hastreasury
d_Hastreasury_268 a0 a1 a2 = ()
-- _.Hastreasury-Acnt
d_Hastreasury'45'Acnt_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
d_Hastreasury'45'Acnt_272 ~v0 = du_Hastreasury'45'Acnt_272
du_Hastreasury'45'Acnt_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
du_Hastreasury'45'Acnt_272
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Hastreasury'45'Acnt_214
-- _.THash
d_THash_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_316 = erased
-- _.Number-Epoch
d_Number'45'Epoch_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_346 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.PParamsOf
d_PParamsOf_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_PParamsOf_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
      (coe v0)
-- _.RwdAddr
d_RwdAddr_398 a0 = ()
-- _.TxOut
d_TxOut_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_504 = erased
-- _.VDeleg
d_VDeleg_520 a0 = ()
-- _.addEpoch
d_addEpoch_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.reservesOf
d_reservesOf_684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198 ->
  AgdaAny -> Integer
d_reservesOf_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_206
      (coe v0)
-- _.treasuryOf
d_treasuryOf_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- _.Acnt.reserves
d_reserves_748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- _.Acnt.treasury
d_treasury_750 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- _.GovActionState.action
d_action_810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844
d_action_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  AgdaAny
d_expiresIn_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_944
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  AgdaAny
d_prevAction_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_948
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_942
      (coe v0)
-- _.GovActionState.votes
d_votes_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_864 a0 = ()
-- _.GovActions.VDeleg
d_VDeleg_906 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_PParamsOf_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
      (coe v0)
-- _.Hasreserves.reservesOf
d_reservesOf_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198 ->
  AgdaAny -> Integer
d_reservesOf_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_206
      (coe v0)
-- _.Hastreasury.treasuryOf
d_treasuryOf_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- _.RwdAddr.net
d_net_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RwdAddr.stake
d_stake_1406 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState
d_CertState_1746 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.CertStateOf
d_CertStateOf_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288
d_CertStateOf_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DRepsOf
d_DRepsOf_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState
d_DState_1768 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1774 v0 ~v1
  = du_DecEq'45'DepositPurpose_1774 v0
du_DecEq'45'DepositPurpose_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe v0))
-- Ledger.Conway.Specification.Epoch._.DepositPurpose
d_DepositPurpose_1780 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Deposits
d_Deposits_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_Deposits_1782 = erased
-- Ledger.Conway.Specification.Epoch._.DepositsOf
d_DepositsOf_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1006
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState
d_GState_1792 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.HasCertState
d_HasCertState_1814 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps
d_HasDReps_1820 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasDReps-CertState
d_HasDReps'45'CertState_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
d_HasDReps'45'CertState_1824 ~v0 ~v1
  = du_HasDReps'45'CertState_1824
du_HasDReps'45'CertState_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
du_HasDReps'45'CertState_1824
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1332
-- Ledger.Conway.Specification.Epoch._.HasDReps-GState
d_HasDReps'45'GState_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
d_HasDReps'45'GState_1826 ~v0 ~v1 = du_HasDReps'45'GState_1826
du_HasDReps'45'GState_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
du_HasDReps'45'GState_1826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1286
-- Ledger.Conway.Specification.Epoch._.HasDeposits
d_HasDeposits_1834 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRewards
d_HasRewards_1850 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasRewards-CertState
d_HasRewards'45'CertState_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
d_HasRewards'45'CertState_1854 ~v0 ~v1
  = du_HasRewards'45'CertState_1854
du_HasRewards'45'CertState_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
du_HasRewards'45'CertState_1854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1330
-- Ledger.Conway.Specification.Epoch._.HasVDelegs-DState
d_HasVDelegs'45'DState_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasVDelegs_1202
d_HasVDelegs'45'DState_1862 ~v0 ~v1 = du_HasVDelegs'45'DState_1862
du_HasVDelegs'45'DState_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasVDelegs_1202
du_HasVDelegs'45'DState_1862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVDelegs'45'DState_1218
-- Ledger.Conway.Specification.Epoch._.RewardsOf
d_RewardsOf_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1026
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.dState
d_dState_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
d_dState_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1296
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.gState
d_gState_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_gState_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.CertState.pState
d_pState_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_pState_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1298
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.rewards
d_rewards_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1174
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.stakeDelegs
d_stakeDelegs_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1172
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.DState.voteDelegs
d_voteDelegs_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1170
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.ccHotKeys
d_ccHotKeys_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1262
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GState.dreps
d_dreps_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1260
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCertState.CertStateOf
d_CertStateOf_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288
d_CertStateOf_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDReps.DRepsOf
d_DRepsOf_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits.DepositsOf
d_DepositsOf_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1006
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasRewards.RewardsOf
d_RewardsOf_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1026
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState
d_EnactState_2102 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.EnactStateOf
d_EnactStateOf_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState
d_HasEnactState_2110 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasPParams-EnactState
d_HasPParams'45'EnactState_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
d_HasPParams'45'EnactState_2114 ~v0 ~v1
  = du_HasPParams'45'EnactState_2114
du_HasPParams'45'EnactState_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
du_HasPParams'45'EnactState_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038
-- Ledger.Conway.Specification.Epoch._.EnactState.cc
d_cc_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.constitution
d_constitution_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pparams
d_pparams_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.pv
d_pv_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010 (coe v0)
-- Ledger.Conway.Specification.Epoch._.EnactState.withdrawals
d_withdrawals_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasEnactState.EnactStateOf
d_EnactStateOf_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.GovState
d_GovState_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_GovState_2182 = erased
-- Ledger.Conway.Specification.Epoch._.GovStateOf
d_GovStateOf_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2302
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasGovState
d_HasGovState_2188 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.HasGovState.GovStateOf
d_GovStateOf_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2302
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasCast-LState
d_HasCast'45'LState_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2308 ~v0 ~v1 = du_HasCast'45'LState_2308
du_HasCast'45'LState_2308 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LState_2608
-- Ledger.Conway.Specification.Epoch._.HasCertState-LState
d_HasCertState'45'LState_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308
d_HasCertState'45'LState_2310 ~v0 ~v1
  = du_HasCertState'45'LState_2310
du_HasCertState'45'LState_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308
du_HasCertState'45'LState_2310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2602
-- Ledger.Conway.Specification.Epoch._.HasDeposits-LState
d_HasDeposits'45'LState_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
d_HasDeposits'45'LState_2312 ~v0 ~v1
  = du_HasDeposits'45'LState_2312
du_HasDeposits'45'LState_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
du_HasDeposits'45'LState_2312
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2604
-- Ledger.Conway.Specification.Epoch._.HasGovState-LState
d_HasGovState'45'LState_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294
d_HasGovState'45'LState_2314 ~v0 ~v1
  = du_HasGovState'45'LState_2314
du_HasGovState'45'LState_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294
du_HasGovState'45'LState_2314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2600
-- Ledger.Conway.Specification.Epoch._.HasLState
d_HasLState_2316 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Epoch._.LState
d_LState_2334 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.LStateOf
d_LStateOf_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
d_LStateOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2588
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasLState.LStateOf
d_LStateOf_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
d_LStateOf_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2588
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.certState
d_certState_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288
d_certState_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.govSt
d_govSt_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2570
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.LState.utxoSt
d_utxoSt_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2380 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2382 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2382
du_HasCast'45'PoolReapState_2382 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2272
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2410 = erased
-- Ledger.Conway.Specification.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2416 ~v0 ~v1
  = du_HasCast'45'RatifyState_2416
du_HasCast'45'RatifyState_2416 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2448
-- Ledger.Conway.Specification.Epoch._.RatifyState
d_RatifyState_2442 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.StakeDistrs
d_StakeDistrs_2448 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RatifyState.delay
d_delay_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  Bool
d_delay_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2404
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.es
d_es_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RatifyState.removed
d_removed_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
      (coe v0)
-- Ledger.Conway.Specification.Epoch._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2540 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch._.BlocksMade
d_BlocksMade_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_BlocksMade_2542 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate
d_RewardUpdate_2550 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshot
d_Snapshot_2556 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.Snapshots
d_Snapshots_2560 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.flowConservation
d_flowConservation_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2596 = erased
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.rs
d_rs_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2656 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf
d_Δf_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δf_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2654 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2664
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δr
d_Δr_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δr_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2652 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt
d_Δt_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer
d_Δt_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2650 (coe v0)
-- Ledger.Conway.Specification.Epoch._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2662
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.delegations
d_delegations_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.poolParameters
d_poolParameters_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParameters_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshot.stake
d_stake_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.feeSS
d_feeSS_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  Integer
d_feeSS_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.go
d_go_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_go_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740 (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.mark
d_mark_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_mark_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.Snapshots.set
d_set_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_set_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
d_HasDeposits'45'UTxOState_2646 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2646
du_HasDeposits'45'UTxOState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
du_HasDeposits'45'UTxOState_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2234
-- Ledger.Conway.Specification.Epoch._.UTxOState
d_UTxOState_2674 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch._.UTxOState.deposits
d_deposits_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.donations
d_donations_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_donations_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
      (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.fees
d_fees_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_fees_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206 (coe v0)
-- Ledger.Conway.Specification.Epoch._.UTxOState.utxo
d_utxo_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204 (coe v0)
-- Ledger.Conway.Specification.Epoch.EpochState
d_EpochState_2818 a0 a1 = ()
data T_EpochState_2818
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
-- Ledger.Conway.Specification.Epoch.EpochState.acnt
d_acnt_2830 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2830 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ss
d_ss_2832 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
d_ss_2832 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.ls
d_ls_2834 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
d_ls_2834 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.es
d_es_2836 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_2836 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EpochState.fut
d_fut_2838 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_fut_2838 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasEpochState
d_HasEpochState_2846 a0 a1 a2 a3 = ()
newtype T_HasEpochState_2846
  = C_constructor_2856 (AgdaAny -> T_EpochState_2818)
-- Ledger.Conway.Specification.Epoch.HasEpochState.EpochStateOf
d_EpochStateOf_2854 ::
  T_HasEpochState_2846 -> AgdaAny -> T_EpochState_2818
d_EpochStateOf_2854 v0
  = case coe v0 of
      C_constructor_2856 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.EpochStateOf
d_EpochStateOf_2860 ::
  T_HasEpochState_2846 -> AgdaAny -> T_EpochState_2818
d_EpochStateOf_2860 v0 = coe d_EpochStateOf_2854 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLState-EpochState
d_HasLState'45'EpochState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580
d_HasLState'45'EpochState_2862 ~v0 ~v1
  = du_HasLState'45'EpochState_2862
du_HasLState'45'EpochState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580
du_HasLState'45'EpochState_2862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2590
      (coe (\ v0 -> d_ls_2834 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022
d_HasEnactState'45'EpochState_2864 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2864
du_HasEnactState'45'EpochState_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022
du_HasEnactState'45'EpochState_2864
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1032
      (coe (\ v0 -> d_es_2836 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasDeposits-EpochState
d_HasDeposits'45'EpochState_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
d_HasDeposits'45'EpochState_2866 ~v0 ~v1
  = du_HasDeposits'45'EpochState_2866
du_HasDeposits'45'EpochState_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998
du_HasDeposits'45'EpochState_2866
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1008
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1006
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDeposits'45'LState_2604)
              (d_ls_2834 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hastreasury-EpochState
d_Hastreasury'45'EpochState_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
d_Hastreasury'45'EpochState_2868 ~v0 ~v1
  = du_Hastreasury'45'EpochState_2868
du_Hastreasury'45'EpochState_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
du_Hastreasury'45'EpochState_2868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_188
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
              (coe d_acnt_2830 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hasreserves-EpochState
d_Hasreserves'45'EpochState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198
d_Hasreserves'45'EpochState_2870 ~v0 ~v1
  = du_Hasreserves'45'EpochState_2870
du_Hasreserves'45'EpochState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198
du_Hasreserves'45'EpochState_2870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_208
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
              (coe d_acnt_2830 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasPParams-EpochState
d_HasPParams'45'EpochState_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
d_HasPParams'45'EpochState_2872 ~v0 ~v1
  = du_HasPParams'45'EpochState_2872
du_HasPParams'45'EpochState_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
du_HasPParams'45'EpochState_2872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_468
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038)
              (d_es_2836 (coe v0))))
-- Ledger.Conway.Specification.Epoch.PoolDelegatedStake
d_PoolDelegatedStake_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_PoolDelegatedStake_2874 = erased
-- Ledger.Conway.Specification.Epoch.NewEpochState
d_NewEpochState_2876 a0 a1 = ()
data T_NewEpochState_2876
  = C_constructor_2894 AgdaAny T_EpochState_2818
                       (Maybe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2886 :: T_NewEpochState_2876 -> AgdaAny
d_lastEpoch_2886 v0
  = case coe v0 of
      C_constructor_2894 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.epochState
d_epochState_2888 :: T_NewEpochState_2876 -> T_EpochState_2818
d_epochState_2888 v0
  = case coe v0 of
      C_constructor_2894 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.ru
d_ru_2890 ::
  T_NewEpochState_2876 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632
d_ru_2890 v0
  = case coe v0 of
      C_constructor_2894 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.NewEpochState.pd
d_pd_2892 ::
  T_NewEpochState_2876 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2892 v0
  = case coe v0 of
      C_constructor_2894 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.HasNewEpochState
d_HasNewEpochState_2900 a0 a1 a2 a3 = ()
newtype T_HasNewEpochState_2900
  = C_constructor_2910 (AgdaAny -> T_NewEpochState_2876)
-- Ledger.Conway.Specification.Epoch.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2908 ::
  T_HasNewEpochState_2900 -> AgdaAny -> T_NewEpochState_2876
d_NewEpochStateOf_2908 v0
  = case coe v0 of
      C_constructor_2910 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.NewEpochStateOf
d_NewEpochStateOf_2914 ::
  T_HasNewEpochState_2900 -> AgdaAny -> T_NewEpochState_2876
d_NewEpochStateOf_2914 v0 = coe d_NewEpochStateOf_2908 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch
d_HasLastEpoch_2920 a0 a1 a2 a3 = ()
newtype T_HasLastEpoch_2920
  = C_constructor_2930 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch.LastEpochOf
d_LastEpochOf_2928 :: T_HasLastEpoch_2920 -> AgdaAny -> AgdaAny
d_LastEpochOf_2928 v0
  = case coe v0 of
      C_constructor_2930 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch._.LastEpochOf
d_LastEpochOf_2934 :: T_HasLastEpoch_2920 -> AgdaAny -> AgdaAny
d_LastEpochOf_2934 v0 = coe d_LastEpochOf_2928 (coe v0)
-- Ledger.Conway.Specification.Epoch.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_HasLastEpoch_2920
d_HasLastEpoch'45'NewEpochState_2936 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2936
du_HasLastEpoch'45'NewEpochState_2936 :: T_HasLastEpoch_2920
du_HasLastEpoch'45'NewEpochState_2936
  = coe C_constructor_2930 (coe (\ v0 -> d_lastEpoch_2886 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_HasEpochState_2846
d_HasEpochState'45'NewEpochState_2938 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2938
du_HasEpochState'45'NewEpochState_2938 :: T_HasEpochState_2846
du_HasEpochState'45'NewEpochState_2938
  = coe C_constructor_2856 (coe (\ v0 -> d_epochState_2888 (coe v0)))
-- Ledger.Conway.Specification.Epoch.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022
d_HasEnactState'45'NewEpochState_2940 ~v0 ~v1
  = du_HasEnactState'45'NewEpochState_2940
du_HasEnactState'45'NewEpochState_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022
du_HasEnactState'45'NewEpochState_2940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1032
      (coe (\ v0 -> d_es_2836 (coe d_epochState_2888 (coe v0))))
-- Ledger.Conway.Specification.Epoch.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
d_Hastreasury'45'NewEpochState_2942 ~v0 ~v1
  = du_Hastreasury'45'NewEpochState_2942
du_Hastreasury'45'NewEpochState_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
du_Hastreasury'45'NewEpochState_2942
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_188
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
              (coe d_acnt_2830 (coe d_epochState_2888 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasLState-NewEpochState
d_HasLState'45'NewEpochState_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580
d_HasLState'45'NewEpochState_2944 ~v0 ~v1
  = du_HasLState'45'NewEpochState_2944
du_HasLState'45'NewEpochState_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2580
du_HasLState'45'NewEpochState_2944
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2590
      (coe (\ v0 -> d_ls_2834 (coe d_epochState_2888 (coe v0))))
-- Ledger.Conway.Specification.Epoch.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294
d_HasGovState'45'NewEpochState_2946 ~v0 ~v1
  = du_HasGovState'45'NewEpochState_2946
du_HasGovState'45'NewEpochState_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2294
du_HasGovState'45'NewEpochState_2946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2304
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2302
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGovState'45'LState_2600)
              (d_ls_2834 (coe d_epochState_2888 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308
d_HasCertState'45'NewEpochState_2948 ~v0 ~v1
  = du_HasCertState'45'NewEpochState_2948
du_HasCertState'45'NewEpochState_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308
du_HasCertState'45'NewEpochState_2948
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1318
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2602)
              (d_ls_2834 (coe d_epochState_2888 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
d_HasDReps'45'NewEpochState_2950 ~v0 ~v1
  = du_HasDReps'45'NewEpochState_2950
du_HasDReps'45'NewEpochState_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
du_HasDReps'45'NewEpochState_2950
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1048
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1332)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2602)
                 (d_ls_2834 (coe d_epochState_2888 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
d_HasRewards'45'NewEpochState_2952 ~v0 ~v1
  = du_HasRewards'45'NewEpochState_2952
du_HasRewards'45'NewEpochState_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
du_HasRewards'45'NewEpochState_2952
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1028
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1026
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1330)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_2602)
                 (d_ls_2834 (coe d_epochState_2888 (coe v0))))))
-- Ledger.Conway.Specification.Epoch.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
d_HasPParams'45'NewEpochState_2954 ~v0 ~v1
  = du_HasPParams'45'NewEpochState_2954
du_HasPParams'45'NewEpochState_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
du_HasPParams'45'NewEpochState_2954
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_468
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038)
              (d_es_2836 (coe d_epochState_2888 (coe v0)))))
-- Ledger.Conway.Specification.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_2956 ~v0 ~v1
  = du_HasCast'45'EpochState_2956
du_HasCast'45'EpochState_2956 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_2956
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
                                 (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2560 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2334 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2102 :: Integer) (4112555248803407823 :: Integer)
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
                                             (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                             (2442 :: Integer) (4112555248803407823 :: Integer)
                                             "Ledger.Conway.Specification.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840))
-- Ledger.Conway.Specification.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_2958 ~v0 ~v1
  = du_HasCast'45'NewEpochState_2958
du_HasCast'45'NewEpochState_2958 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_2958
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
                                 (2876 :: Integer) (4112555248803407823 :: Integer)
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
                                 (162 :: Integer) (4112555248803407823 :: Integer) "_.Epoch"
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
                                    (2876 :: Integer) (4112555248803407823 :: Integer)
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
                                    (2818 :: Integer) (4112555248803407823 :: Integer)
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
                                       (2876 :: Integer) (4112555248803407823 :: Integer)
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
                                                   (2550 :: Integer)
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
                                          (2876 :: Integer) (4112555248803407823 :: Integer)
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
                                          (2874 :: Integer) (4112555248803407823 :: Integer)
                                          "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_2894))
-- Ledger.Conway.Specification.Epoch.toRwdAddr
d_toRwdAddr_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_toRwdAddr_2960 v0 ~v1 v2 = du_toRwdAddr_2960 v0 v2
du_toRwdAddr_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
du_toRwdAddr_2960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Specification.Epoch.getStakeCred
d_getStakeCred_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_2964 ~v0 ~v1 v2 = du_getStakeCred_2964 v2
du_getStakeCred_2964 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getStakeCred_2964 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_168
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.createRUpd
d_createRUpd_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632
d_createRUpd_2968 v0 ~v1 v2 v3 v4 v5
  = du_createRUpd_2968 v0 v2 v3 v4 v5
du_createRUpd_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632
du_createRUpd_2968 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2666
      (coe du_Δt'8321'_3010 (coe v0) (coe v1) (coe v2) (coe v3))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__284
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__302 (coe (0 :: Integer))
            (coe du_Δr'8321'_3004 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_Δr'8322'_3018 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      (MAlonzo.Code.Data.Integer.Base.d__'45'__302
         (coe (0 :: Integer)) (coe du_feeSS_2988 (coe v3)))
      (coe du_rs_3016 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du_Δt'45'nonneg_3082 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δf'45'nonpos_3084 (coe v3))
-- Ledger.Conway.Specification.Epoch._.prevPp
d_prevPp_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_prevPp_2982 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_prevPp_2982 v4
du_prevPp_2982 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_prevPp_2982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038)
      (d_es_2836 (coe v0))
-- Ledger.Conway.Specification.Epoch._.reserves
d_reserves_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_reserves_2984 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_reserves_2984 v4
du_reserves_2984 :: T_EpochState_2818 -> Integer
du_reserves_2984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe d_acnt_2830 (coe v0))
-- Ledger.Conway.Specification.Epoch._.pstakego
d_pstakego_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
d_pstakego_2986 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pstakego_2986 v4
du_pstakego_2986 ::
  T_EpochState_2818 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668
du_pstakego_2986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
      (coe d_ss_2832 (coe v0))
-- Ledger.Conway.Specification.Epoch._.feeSS
d_feeSS_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_feeSS_2988 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_feeSS_2988 v4
du_feeSS_2988 :: T_EpochState_2818 -> Integer
du_feeSS_2988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
      (coe d_ss_2832 (coe v0))
-- Ledger.Conway.Specification.Epoch._.stake
d_stake_2990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2990 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_stake_2990 v4
du_stake_2990 ::
  T_EpochState_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stake_2990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
      (coe du_pstakego_2986 (coe v0))
-- Ledger.Conway.Specification.Epoch._.delegs
d_delegs_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegs_2992 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_delegs_2992 v4
du_delegs_2992 ::
  T_EpochState_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_delegs_2992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
      (coe du_pstakego_2986 (coe v0))
-- Ledger.Conway.Specification.Epoch._.poolParams
d_poolParams_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolParams_2994 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_poolParams_2994 v4
du_poolParams_2994 ::
  T_EpochState_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolParams_2994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
      (coe du_pstakego_2986 (coe v0))
-- Ledger.Conway.Specification.Epoch._.blocksMade
d_blocksMade_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_blocksMade_2996 v0 ~v1 ~v2 v3 ~v4 ~v5 = du_blocksMade_2996 v0 v3
du_blocksMade_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_blocksMade_2996 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
d_ρ_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ρ_3000 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ρ_3000 v4
du_ρ_3000 ::
  T_EpochState_2818 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ρ_3000 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_406
         (coe du_prevPp_2982 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.η
d_η_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_η_3002 v0 ~v1 v2 v3 ~v4 ~v5 = du_η_3002 v0 v2 v3
du_η_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_η_3002 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.d__'247''8320'__54
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe du_blocksMade_2996 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.Δr₁
d_Δr'8321'_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_Δr'8321'_3004 v0 ~v1 v2 v3 v4 ~v5 = du_Δr'8321'_3004 v0 v2 v3 v4
du_Δr'8321'_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer
du_Δr'8321'_3004 v0 v1 v2 v3
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
               (coe du_η_3002 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3000 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_2984 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot
d_rewardPot_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_rewardPot_3006 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot_3006 v0 v2 v3 v4
du_rewardPot_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer
du_rewardPot_3006 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__284
      (coe du_feeSS_2988 (coe v3))
      (coe du_Δr'8321'_3004 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.τ
d_τ_3008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_τ_3008 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_τ_3008 v4
du_τ_3008 ::
  T_EpochState_2818 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_τ_3008 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
         (coe du_prevPp_2982 (coe v0)))
-- Ledger.Conway.Specification.Epoch._.Δt₁
d_Δt'8321'_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_Δt'8321'_3010 v0 ~v1 v2 v3 v4 ~v5 = du_Δt'8321'_3010 v0 v2 v3 v4
du_Δt'8321'_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer
du_Δt'8321'_3010 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Rational.Base.d_floor_346
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3006 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe du_τ_3008 (coe v3)))
-- Ledger.Conway.Specification.Epoch._.R
d_R_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_R_3012 v0 ~v1 v2 v3 v4 ~v5 = du_R_3012 v0 v2 v3 v4
du_R_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer
du_R_3012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_rewardPot_3006 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_Δt'8321'_3010 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.circulation
d_circulation_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_circulation_3014 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_circulation_3014 v4 v5
du_circulation_3014 :: T_EpochState_2818 -> Integer -> Integer
du_circulation_3014 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
      (coe du_reserves_2984 (coe v0))
-- Ledger.Conway.Specification.Epoch._.rs
d_rs_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_3016 v0 ~v1 v2 v3 v4 v5 = du_rs_3016 v0 v2 v3 v4 v5
du_rs_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rs_3016 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2562
      (coe v0) (coe du_prevPp_2982 (coe v3)) (coe v2)
      (coe
         MAlonzo.Code.Prelude.d_posPart_58
         (coe du_R_3012 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe du_poolParams_2994 (coe v3)) (coe du_stake_2990 (coe v3))
      (coe du_delegs_2992 (coe v3))
      (coe du_circulation_3014 (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.Δr₂
d_Δr'8322'_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
d_Δr'8322'_3018 v0 ~v1 v2 v3 v4 v5
  = du_Δr'8322'_3018 v0 v2 v3 v4 v5
du_Δr'8322'_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> Integer -> Integer
du_Δr'8322'_3018 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'45'__302
      (coe du_R_3012 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v5 -> v5))
         (coe du_rs_3016 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Epoch._.lemmaFlow
d_lemmaFlow_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemmaFlow_3030 = erased
-- Ledger.Conway.Specification.Epoch._.flowConservation
d_flowConservation_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_3032 = erased
-- Ledger.Conway.Specification.Epoch._.÷₀-0≤⇒0≤
d_'247''8320''45'0'8804''8658'0'8804'_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''8320''45'0'8804''8658'0'8804'_3040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                           v6 v7 ~v8 ~v9
  = du_'247''8320''45'0'8804''8658'0'8804'_3040 v6 v7
du_'247''8320''45'0'8804''8658'0'8804'_3040 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''8320''45'0'8804''8658'0'8804'_3040 v0 v1
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
d_η'45'nonneg_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_η'45'nonneg_3074 v0 ~v1 v2 v3 ~v4 ~v5
  = du_η'45'nonneg_3074 v0 v2 v3
du_η'45'nonneg_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_η'45'nonneg_3074 v0 v1 v2
  = coe
      du_'247''8320''45'0'8804''8658'0'8804'_3040
      (let v3 = coe du_blocksMade_2996 (coe v0) (coe v2) in
       coe (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v3)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v0))))
-- Ledger.Conway.Specification.Epoch._.min1η-nonneg
d_min1η'45'nonneg_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_min1η'45'nonneg_3076 v0 ~v1 v2 v3 ~v4 ~v5
  = du_min1η'45'nonneg_3076 v0 v2 v3
du_min1η'45'nonneg_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_min1η'45'nonneg_3076 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3394
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'totalPreorder_3646)
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8851''45'operator_5716)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
      (coe du_η_3002 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
      (coe du_η'45'nonneg_3074 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.Δr₁-nonneg
d_Δr'8321''45'nonneg_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δr'8321''45'nonneg_3078 v0 ~v1 v2 v3 v4 ~v5
  = du_Δr'8321''45'nonneg_3078 v0 v2 v3 v4
du_Δr'8321''45'nonneg_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δr'8321''45'nonneg_3078 v0 v1 v2 v3
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
               (coe du_η_3002 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3000 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_2984 (coe v3))))
      (coe
         MAlonzo.Code.Qstdlib.Data.Rational.Properties.du_'42''45'0'8804''8658'0'8804'_68
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'8851'__332
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
               (coe du_η_3002 (coe v0) (coe v1) (coe v2)))
            (coe du_ρ_3000 (coe v3)))
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_reserves_2984 (coe v3)))
         (coe
            MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_fromℕ'45'0'8804'_60
            (coe du_reserves_2984 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.rewardPot-nonneg
d_rewardPot'45'nonneg_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_rewardPot'45'nonneg_3080 v0 ~v1 v2 v3 v4 ~v5
  = du_rewardPot'45'nonneg_3080 v0 v2 v3 v4
du_rewardPot'45'nonneg_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_rewardPot'45'nonneg_3080 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4632
      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
      (coe du_feeSS_2988 (coe v3)) (coe (0 :: Integer))
      (coe du_Δr'8321'_3004 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_nonNegative'8315''185'_3338)
      (coe
         du_Δr'8321''45'nonneg_3078 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Epoch._.Δt-nonneg
d_Δt'45'nonneg_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonneg_3082 v0 ~v1 v2 v3 v4 ~v5
  = du_Δt'45'nonneg_3082 v0 v2 v3 v4
du_Δt'45'nonneg_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δt'45'nonneg_3082 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Qstdlib.Data.Rational.Properties.d_0'8804''8658'0'8804'floor_36
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3006 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
               (coe du_prevPp_2982 (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.du_UnitInterval'45''42''45'0'8804'_174
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe du_rewardPot_3006 (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
            (coe du_prevPp_2982 (coe v3))))
-- Ledger.Conway.Specification.Epoch._.Δf-nonpos
d_Δf'45'nonpos_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_EpochState_2818 ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpos_3084 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_Δf'45'nonpos_3084 v4
du_Δf'45'nonpos_3084 ::
  T_EpochState_2818 -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_Δf'45'nonpos_3084 v0
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
         (coe (0 :: Integer)) (coe du_feeSS_2988 (coe v0)))
      (0 :: Integer)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v1 v2 v3 v4 v5 -> v5)
         (MAlonzo.Code.Data.Integer.Base.d__'45'__302
            (coe (0 :: Integer)) (coe du_feeSS_2988 (coe v0)))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__260
            (coe du_feeSS_2988 (coe v0)))
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
               (coe du_feeSS_2988 (coe v0)))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
                  (coe d_ss_2832 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
         erased)
-- Ledger.Conway.Specification.Epoch.applyRUpd
d_applyRUpd_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  T_EpochState_2818 -> T_EpochState_2818
d_applyRUpd_3090 v0 ~v1 v2 v3 = du_applyRUpd_3090 v0 v2 v3
du_applyRUpd_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  T_EpochState_2818 -> T_EpochState_2818
du_applyRUpd_3090 v0 v1 v2
  = case coe v2 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840 v3 v4 v5 v6 v7
        -> case coe v3 of
             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2574 v10 v11 v12
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v13 v14 v15 v16
                             -> case coe v12 of
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1302 v17 v18 v19
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1176 v20 v21 v22
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
                                                                              (2818 :: Integer)
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
                                                                                 (2818 :: Integer)
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
                                                                                 (2560 :: Integer)
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
                                                                                    (2818 ::
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
                                                                                    (2334 ::
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
                                                                                       (2818 ::
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
                                                                                       (2102 ::
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
                                                                                          (2818 ::
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
                                                                                          (2442 ::
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
                                                         C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2840)))
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2650
                                                                     (coe v1)))
                                                               (coe
                                                                  du_unregRU''_3142 (coe v0)
                                                                  (coe v1) (coe v22))))
                                                         (coe
                                                            MAlonzo.Code.Prelude.d_posPart_58
                                                            (coe
                                                               MAlonzo.Code.Data.Integer.Base.d__'43'__284
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2652
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
                                                                                          (2560 ::
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
                                                                                          (1980 ::
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
                                                                                             (2560 ::
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
                                                                                             (1816 ::
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
                                                                                                (2560 ::
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
                                                                                                (2200 ::
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2574)))
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
                                                                                                (2194 ::
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
                                                                                                (506 ::
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
                                                                                                   (2194 ::
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
                                                                                                      (2194 ::
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
                                                                                                      (1856 ::
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
                                                                                                         (2194 ::
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
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212)))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2654
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
                                                                                                   (1288 ::
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
                                                                                                   (1162 ::
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
                                                                                                      (1288 ::
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
                                                                                                      (1222 ::
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
                                                                                                         (1288 ::
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
                                                                                                         (1254 ::
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1302)))
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
                                                                                                         (1162 ::
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
                                                                                                         (180 ::
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
                                                                                                                  (38 ::
                                                                                                                     Integer)
                                                                                                                  (3005244792873517680 ::
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
                                                                                                                           (284 ::
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
                                                                                                                                    (1230 ::
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
                                                                                                                                                   (628 ::
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
                                                                                                                                          (628 ::
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
                                                                                                                     (862 ::
                                                                                                                        Integer)
                                                                                                                     (3005244792873517680 ::
                                                                                                                        Integer)
                                                                                                                     "Ledger.Conway.Specification.Certs._.VDeleg"
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
                                                                                                            (1162 ::
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
                                                                                                            (180 ::
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
                                                                                                                     (38 ::
                                                                                                                        Integer)
                                                                                                                     (3005244792873517680 ::
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
                                                                                                                              (284 ::
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
                                                                                                                                       (1230 ::
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
                                                                                                                                                      (628 ::
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
                                                                                                                                             (628 ::
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
                                                                                                                        (184 ::
                                                                                                                           Integer)
                                                                                                                        (3005244792873517680 ::
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
                                                                                                               (1162 ::
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
                                                                                                               (180 ::
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
                                                                                                                        (38 ::
                                                                                                                           Integer)
                                                                                                                        (3005244792873517680 ::
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
                                                                                                                                 (284 ::
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
                                                                                                                                          (1230 ::
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
                                                                                                                                                         (628 ::
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
                                                                                                                                                (628 ::
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
                                                                                                                           (6 ::
                                                                                                                              Integer)
                                                                                                                           (14798748958053396954 ::
                                                                                                                              Integer)
                                                                                                                           "Ledger.Prelude.Base.Coin"
                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1176)))
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
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                             (coe
                                                                                                v0))))
                                                                                    v22
                                                                                    (coe
                                                                                       du_regRU_3138
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
d_regRU_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_3138 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             v13 ~v14 ~v15 ~v16 ~v17
  = du_regRU_3138 v0 v2 v13
du_regRU_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_3138 v0 v1 v2
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2656
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU
d_unregRU_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_3140 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU_3140 v0 v2 v13
du_unregRU_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_3140 v0 v1 v2
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
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2656
         (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
-- Ledger.Conway.Specification.Epoch._.unregRU'
d_unregRU''_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  Integer
d_unregRU''_3142 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 v13 ~v14 ~v15 ~v16 ~v17
  = du_unregRU''_3142 v0 v2 v13
du_unregRU''_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_3142 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v3 -> v3)) (coe du_unregRU_3140 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch.getOrphans
d_getOrphans_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_3146 v0 ~v1 v2 v3 = du_getOrphans_3146 v0 v2 v3
du_getOrphans_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_3146 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_3156 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
-- Ledger.Conway.Specification.Epoch._.step
d_step_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_3156 v0 ~v1 v2 ~v3 v4 = du_step_3156 v0 v2 v4
du_step_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_3156 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2618
                                 (coe v0) (coe v1) (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_948
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
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.d_hasParent'63'_2618
                              (coe v0) (coe v1) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_948
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.gaDepositStake
d_gaDepositStake_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_3178 v0 ~v1 v2 v3
  = du_gaDepositStake_3178 v0 v2 v3
du_gaDepositStake_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_3178 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1282
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
         (coe du_govSt''_3188 (coe v1)))
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
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_986
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_986
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2)))))))
         (coe du_govSt''_3188 (coe v1)))
-- Ledger.Conway.Specification.Epoch._.govSt'
d_govSt''_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3188 ~v0 ~v1 v2 ~v3 = du_govSt''_3188 v2
du_govSt''_3188 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3188 v0
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
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_942
                 (coe v1))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_430
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v0))
-- Ledger.Conway.Specification.Epoch.mkStakeDistrs
d_mkStakeDistrs_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352
d_mkStakeDistrs_3200 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_3200 v0 v2 v3 v4 v5
du_mkStakeDistrs_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352
du_mkStakeDistrs_3200 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v0)))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
            (coe
               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
            v4)
         (coe
            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
               (coe v1))
            (coe du_gaDepositStake_3178 (coe v0) (coe v2) (coe v3))))
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0
d_EPOCH'45'Updates0_3250 a0 a1 = ()
data T_EPOCH'45'Updates0_3250
  = C_EPOCHUpdates0_3276 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
                         [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
                         Integer
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.es
d_es_3264 ::
  T_EPOCH'45'Updates0_3250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_3264 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.govSt'
d_govSt''_3266 ::
  T_EPOCH'45'Updates0_3250 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3266 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.payout
d_payout_3268 ::
  T_EPOCH'45'Updates0_3250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3268 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.gState'
d_gState''_3270 ::
  T_EPOCH'45'Updates0_3250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_gState''_3270 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.utxoSt'
d_utxoSt''_3272 ::
  T_EPOCH'45'Updates0_3250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt''_3272 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates0.totWithdrawals
d_totWithdrawals_3274 :: T_EPOCH'45'Updates0_3250 -> Integer
d_totWithdrawals_3274 v0
  = case coe v0 of
      C_EPOCHUpdates0_3276 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates0
d_EPOCH'45'updates0_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  T_EPOCH'45'Updates0_3250
d_EPOCH'45'updates0_3278 v0 ~v1 v2 v3
  = du_EPOCH'45'updates0_3278 v0 v2 v3
du_EPOCH'45'updates0_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  T_EPOCH'45'Updates0_3250
du_EPOCH'45'updates0_3278 v0 v1 v2
  = coe
      C_EPOCHUpdates0_3276 (coe du_es_3312 (coe v1))
      (coe du_govSt''_3322 (coe v0) (coe v1) (coe v2))
      (coe du_payout_3346 (coe v0) (coe v1) (coe v2))
      (coe du_gState''_3348 (coe v0) (coe v1) (coe v2))
      (coe du_utxoSt''_3352 (coe v0) (coe v1) (coe v2))
      (coe du_totWithdrawals_3354 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Epoch._.es
d_es_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_3312 ~v0 ~v1 v2 ~v3 = du_es_3312 v2
du_es_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
du_es_3312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
            (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Epoch._.tmpGovSt
d_tmpGovSt_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_3314 v0 ~v1 v2 v3 = du_tmpGovSt_3314 v0 v2 v3
du_tmpGovSt_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_tmpGovSt_3314 v0 v1 v2
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
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1282
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
                    (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
                       (coe v1)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2570
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.orphans
d_orphans_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_3318 v0 ~v1 v2 v3 = du_orphans_3318 v0 v2 v3
du_orphans_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_orphans_3318 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_fromList_430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         du_getOrphans_3146 (coe v0) (coe du_es_3312 (coe v1))
         (coe du_tmpGovSt_3314 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Epoch._.removed'
d_removed''_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_3320 v0 ~v1 v2 v3 = du_removed''_3320 v0 v2 v3
du_removed''_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed''_3320 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
         (coe v1))
      (coe du_orphans_3318 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govSt'
d_govSt''_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3322 v0 ~v1 v2 v3 = du_govSt''_3322 v0 v2 v3
du_govSt''_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3322 v0 v1 v2
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
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1282
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
                    (coe du_removed''_3320 (coe v0) (coe v1) (coe v2)))))
           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
      (MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2570
         (coe v2))
-- Ledger.Conway.Specification.Epoch._.removedGovActions
d_removedGovActions_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3326 v0 ~v1 v2 v3
  = du_removedGovActions_3326 v0 v2 v3
du_removedGovActions_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removedGovActions_3326 v0 v1 v2
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
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_942
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
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_986
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
      (coe du_removed''_3320 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Epoch._.govActionReturns
d_govActionReturns_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_3336 v0 ~v1 v2 v3
  = du_govActionReturns_3336 v0 v2 v3
du_govActionReturns_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionReturns_3336 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
            (coe du_removedGovActions_3326 (coe v0) (coe v1) (coe v2))))
-- Ledger.Conway.Specification.Epoch._.trWithdrawals
d_trWithdrawals_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trWithdrawals_3344 ~v0 ~v1 v2 ~v3 = du_trWithdrawals_3344 v2
du_trWithdrawals_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trWithdrawals_3344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400 (coe v0))
-- Ledger.Conway.Specification.Epoch._.payout
d_payout_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_3346 v0 ~v1 v2 v3 = du_payout_3346 v0 v2 v3
du_payout_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_payout_3346 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe du_govActionReturns_3336 (coe v0) (coe v1) (coe v2))
      (coe du_trWithdrawals_3344 (coe v1))
-- Ledger.Conway.Specification.Epoch._.gState'
d_gState''_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_gState''_3348 v0 ~v1 v2 v3 = du_gState''_3348 v0 v2 v3
du_gState''_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
du_gState''_3348 v0 v1 v2
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
                                    (1254 :: Integer) (3005244792873517680 :: Integer)
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
                                    (992 :: Integer) (3005244792873517680 :: Integer)
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
                                       (1254 :: Integer) (3005244792873517680 :: Integer)
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
                                                (38 :: Integer) (3005244792873517680 :: Integer)
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
                                                                  (1230 :: Integer)
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
                                                                                 (628 :: Integer)
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
                                                                        (628 :: Integer)
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
                                                               (38 :: Integer)
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
                                                                                 (1230 :: Integer)
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
                                                                                                (628 ::
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
                                                                                       (628 ::
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
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1264)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88)
            (coe
               MAlonzo.Code.Data.List.Base.du_null_262
               (coe du_govSt''_3322 (coe v0) (coe v1) (coe v2)))
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
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
                                (coe v0)))
                          (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1286)
                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
                             (coe v2))))))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1286)
                    (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
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
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1262
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
                     (coe v2))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1044
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                     (coe v1))))))
-- Ledger.Conway.Specification.Epoch._.utxoSt'
d_utxoSt''_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt''_3352 v0 ~v1 v2 v3 = du_utxoSt''_3352 v0 v2 v3
du_utxoSt''_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
du_utxoSt''_3352 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
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
            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
               (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_400
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe du_removedGovActions_3326 (coe v0) (coe v1) (coe v2))))
      (coe (0 :: Integer))
-- Ledger.Conway.Specification.Epoch._.totWithdrawals
d_totWithdrawals_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  Integer
d_totWithdrawals_3354 v0 ~v1 v2 ~v3 = du_totWithdrawals_3354 v0 v2
du_totWithdrawals_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  Integer
du_totWithdrawals_3354 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (coe (\ v2 -> v2)) (coe du_trWithdrawals_3344 (coe v1))
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates
d_EPOCH'45'Updates_3358 a0 a1 = ()
data T_EPOCH'45'Updates_3358
  = C_EPOCHUpdates_3384 MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.es
d_es_3372 ::
  T_EPOCH'45'Updates_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_3372 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.govSt'
d_govSt''_3374 ::
  T_EPOCH'45'Updates_3358 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3374 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.dState''
d_dState''''_3376 ::
  T_EPOCH'45'Updates_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
d_dState''''_3376 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.gState'
d_gState''_3378 ::
  T_EPOCH'45'Updates_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_gState''_3378 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.utxoSt'
d_utxoSt''_3380 ::
  T_EPOCH'45'Updates_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt''_3380 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-Updates.acnt''
d_acnt''''_3382 ::
  T_EPOCH'45'Updates_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt''''_3382 v0
  = case coe v0 of
      C_EPOCHUpdates_3384 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.EPOCH-updates
d_EPOCH'45'updates_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates_3358
d_EPOCH'45'updates_3386 v0 ~v1 v2 v3 v4 v5
  = du_EPOCH'45'updates_3386 v0 v2 v3 v4 v5
du_EPOCH'45'updates_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates_3358
du_EPOCH'45'updates_3386 v0 v1 v2 v3 v4
  = coe
      C_EPOCHUpdates_3384
      (coe d_es_3264 (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))
      (coe d_govSt''_3266 (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))
      (coe du_dState''''_3404 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe d_gState''_3270 (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))
      (coe d_utxoSt''_3272 (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))
      (coe du_acnt''''_3408 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Specification.Epoch._.u0
d_u0_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  T_EPOCH'45'Updates0_3250
d_u0_3400 v0 ~v1 v2 v3 ~v4 ~v5 = du_u0_3400 v0 v2 v3
du_u0_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  T_EPOCH'45'Updates0_3250
du_u0_3400 v0 v1 v2
  = coe du_EPOCH'45'updates0_3278 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Epoch._.refunds
d_refunds_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_3402 v0 ~v1 v2 v3 v4 ~v5 = du_refunds_3402 v0 v2 v3 v4
du_refunds_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refunds_3402 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_payout_3268 (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                          d_payout_3268 (coe du_u0_3400 (coe v0) (coe v1) (coe v2))))))))
      (coe du_toRwdAddr_2960 (coe v0))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1174
            (coe v3)))
-- Ledger.Conway.Specification.Epoch._.dState''
d_dState''''_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
d_dState''''_3404 v0 ~v1 v2 v3 v4 ~v5
  = du_dState''''_3404 v0 v2 v3 v4
du_dState''''_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
du_dState''''_3404 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1176
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1170
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1172
         (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1174
            (coe v3))
         (coe du_refunds_3402 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.unclaimed
d_unclaimed_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_unclaimed_3406 v0 ~v1 v2 v3 v4 ~v5
  = du_unclaimed_3406 v0 v2 v3 v4
du_unclaimed_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  Integer
du_unclaimed_3406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe d_payout_3268 (coe du_u0_3400 (coe v0) (coe v1) (coe v2))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_refunds_3402 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch._.acnt''
d_acnt''''_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt''''_3408 v0 ~v1 v2 v3 v4 v5
  = du_acnt''''_3408 v0 v2 v3 v4 v5
du_acnt''''_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt''''_3408 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172
      (coe
         addInt
         (coe
            addInt (coe du_unclaimed_3406 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2568
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
            (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
               (coe v4))
            (d_totWithdrawals_3274
               (coe du_u0_3400 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
         (coe v4))
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3410 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__3410
  = C_EPOCH_3446 MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2758
                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2280
-- Ledger.Conway.Specification.Epoch._.ccHotKeys
d_ccHotKeys_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3442 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_ccHotKeys_3442 v2
du_ccHotKeys_3442 ::
  T_GeneralizeTel_94279 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_3442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
            (coe d_'46'generalizedField'45'ls_94265 (coe v0))))
-- Ledger.Conway.Specification.Epoch._.dreps
d_dreps_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3444 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_dreps_3444 v2
du_dreps_3444 ::
  T_GeneralizeTel_94279 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_3444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1260
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2572
            (coe d_'46'generalizedField'45'ls_94265 (coe v0))))
-- Ledger.Conway.Specification.Epoch.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_3448 v0 ~v1 v2
  = du_calculatePoolDelegatedStake_3448 v0 v2
du_calculatePoolDelegatedStake_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_calculatePoolDelegatedStake_3448 v0 v1
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
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                  (coe v0)))))
      (coe du_sd_3456 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
            (coe v1)))
-- Ledger.Conway.Specification.Epoch._.sd
d_sd_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sd_3456 v0 ~v1 v2 = du_sd_3456 v0 v2
du_sd_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sd_3456 v0 v1
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
               (coe v0))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1184
         (coe
            du__'8728''691'__3478
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                     (coe v0))))
            (coe du_stakeCredentialsPerPool_3462 (coe v1))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                  (coe v1)))))
-- Ledger.Conway.Specification.Epoch._._.stakeCredentialsPerPool
d_stakeCredentialsPerPool_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeCredentialsPerPool_3462 ~v0 ~v1 v2
  = du_stakeCredentialsPerPool_3462 v2
du_stakeCredentialsPerPool_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeCredentialsPerPool_3462 v0
  = coe
      du__'8315''185''691'_3468
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
            (coe v0)))
-- Ledger.Conway.Specification.Epoch._._._⁻¹ʳ
d__'8315''185''691'_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8315''185''691'_3468 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du__'8315''185''691'_3468 v5
du__'8315''185''691'_3468 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8315''185''691'_3468 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_400
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370) v0
-- Ledger.Conway.Specification.Epoch._._._∘ʳ_
d__'8728''691'__3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8728''691'__3478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728''691'__3478 v6 v7 v8
du__'8728''691'__3478 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8728''691'__3478 v0 v1 v2
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
-- Ledger.Conway.Specification.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3500 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3500
  = C_NEWEPOCH'45'New_3508 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_3510 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_3516 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_94265 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
d_'46'generalizedField'45'ls_94265 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_94267 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_'46'generalizedField'45'fut_94267 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-e
d_'46'generalizedField'45'e_94269 ::
  T_GeneralizeTel_94279 -> AgdaAny
d_'46'generalizedField'45'e_94269 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_94271 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
d_'46'generalizedField'45'ss''_94271 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_94273 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_'46'generalizedField'45'fut''_94273 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_94275 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
d_'46'generalizedField'45'ss_94275 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_94277 ::
  T_GeneralizeTel_94279 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_'46'generalizedField'45'es'8320'_94277 v0
  = case coe v0 of
      C_mkGeneralizeTel_94281 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.GeneralizeTel
d_GeneralizeTel_94279 a0 a1 = ()
data T_GeneralizeTel_94279
  = C_mkGeneralizeTel_94281 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2560
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
