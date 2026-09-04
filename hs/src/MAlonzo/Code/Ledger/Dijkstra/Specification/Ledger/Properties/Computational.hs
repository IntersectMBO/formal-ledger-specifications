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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Entities
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.Properties.Computational
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
d_HasSubTransactions'45'TopLevelTx_560 ~v0
  = du_HasSubTransactions'45'TopLevelTx_560
du_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3986
du_HasSubTransactions'45'TopLevelTx_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4460
-- _.Script
d_Script_818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_818 = erased
-- _.SubLevelTx
d_SubLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_896 = erased
-- _.TopLevelTx
d_TopLevelTx_916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_916 = erased
-- _.UTxO
d_UTxO_950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_950 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.CertState
d_CertState_2652 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.CertState.dState
d_dState_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1364
d_dState_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.CertState.gState
d_gState_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1404
d_gState_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1432
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.CertState.pState
d_pState_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1384
d_pState_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,ENTITIES⦈_
d__'8866'_'8640''10631'_'44'ENTITIES'10632'__3102 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,SUBENTITIES⦈_
d__'8866'_'8640''10631'_'44'SUBENTITIES'10632'__3104 a0 a1 a2 a3 a4
                                                     a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv
d_EntitiesEnv_3108 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubEntitiesEnv
d_SubEntitiesEnv_3124 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv.coldCredentials
d_coldCredentials_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_coldCredentials_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv.epoch
d_epoch_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  AgdaAny
d_epoch_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_epoch_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv.legacyMode
d_legacyMode_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  Bool
d_legacyMode_3148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_legacyMode_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv.pp
d_pp_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_pp_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.EntitiesEnv.rewards₀
d_rewards'8320'_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_rewards'8320'_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubEntitiesEnv.coldCredentials
d_coldCredentials_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_coldCredentials_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubEntitiesEnv.epoch
d_epoch_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  AgdaAny
d_epoch_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_epoch_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubEntitiesEnv.pp
d_pp_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_pp_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubEntitiesEnv.rewards₀
d_rewards'8320'_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.d_rewards'8320'_3120
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__3194 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv
d_GovEnv_3204 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovState
d_GovState_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  ()
d_GovState_3208 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.certState
d_certState_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_certState_1992
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.enactState
d_enactState_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_enactState_1990
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.epoch
d_epoch_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  AgdaAny
d_epoch_3320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_epoch_1984
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.pparams
d_pparams_3322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_pparams_1986
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.ppolicy
d_ppolicy_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  Maybe AgdaAny
d_ppolicy_3324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_ppolicy_1988
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.rewardCreds
d_rewardCreds_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_3326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_rewardCreds_1994
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.GovEnv.txid
d_txid_3328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  AgdaAny
d_txid_3328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_txid_1982 (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.Computational-GOV
d_Computational'45'GOV_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_3348 v0 ~v1
  = du_Computational'45'GOV_3348 v0
du_Computational'45'GOV_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOV_2358
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3362 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__3364 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,SUBLEDGERS⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  ()
d__'8866'_'8640''10631'_'44'SUBLEDGERS'10632'__3366 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,SUBLEDGER⦈_
d__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__3368 a0 a1 a2 a3 a4
                                                   a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.HasCertState-LedgerState
d_HasCertState'45'LedgerState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
d_HasCertState'45'LedgerState_3380 ~v0 ~v1
  = du_HasCertState'45'LedgerState_3380
du_HasCertState'45'LedgerState_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1748
du_HasCertState'45'LedgerState_3380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.HasGovState-LedgerState
d_HasGovState'45'LedgerState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
d_HasGovState'45'LedgerState_3398 ~v0 ~v1
  = du_HasGovState'45'LedgerState_3398
du_HasGovState'45'LedgerState_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2010
du_HasGovState'45'LedgerState_3398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.HasUTxOState-LedgerState
d_HasUTxOState'45'LedgerState_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
d_HasUTxOState'45'LedgerState_3418 ~v0 ~v1
  = du_HasUTxOState'45'LedgerState_3418
du_HasUTxOState'45'LedgerState_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasUTxOState_3220
du_HasUTxOState'45'LedgerState_3418
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3866
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv
d_LedgerEnv_3426 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerState
d_LedgerState_3430 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv
d_SubLedgerEnv_3440 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv.enactState
d_enactState_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3808
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv.pparams
d_pparams_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3806
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv.ppolicy
d_ppolicy_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  Maybe AgdaAny
d_ppolicy_3476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3804
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv.slot
d_slot_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  AgdaAny
d_slot_3478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3802
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerEnv.treasury
d_treasury_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  Integer
d_treasury_3480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3810
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerState.certState
d_certState_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerState.govSt
d_govSt_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200
d_utxoSt_3488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.allScripts
d_allScripts_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_allScripts_3784
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.enactState
d_enactState_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1238
d_enactState_3494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3776
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.isTopLevelValid
d_isTopLevelValid_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  Bool
d_isTopLevelValid_3496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_isTopLevelValid_3786
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.pparams
d_pparams_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3774
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.ppolicy
d_ppolicy_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  Maybe AgdaAny
d_ppolicy_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3772
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.rewards₀
d_rewards'8320'_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards'8320'_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_rewards'8320'_3782
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.slot
d_slot_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  AgdaAny
d_slot_3504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3770
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.treasury
d_treasury_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  Integer
d_treasury_3506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3778
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubLedgerEnv.utxo₀
d_utxo'8320'_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxo'8320'_3780
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_3600 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv
d_UTxOEnv_3612 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOState
d_UTxOState_3616 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3194
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  Bool
d_isTopLevelValid_3716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3196
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.slot
d_slot_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  AgdaAny
d_slot_3720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3186
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  Integer
d_treasury_3722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3192
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3166
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_3730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  Bool
d_legacyMode_3730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3168
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.pools₀
d_pools'8320'_3732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_3732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3164
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.pparams
d_pparams_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3158
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.slot
d_slot_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  AgdaAny
d_slot_3736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.treasury
d_treasury_3738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  Integer
d_treasury_3738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3160
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_3740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3162
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOState.donations
d_donations_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_donations_3744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3212
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOState.fees
d_fees_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  Integer
d_fees_3746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3210
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.UTxOState.utxo
d_utxo_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3762 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3764 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.SUBUTXOW-noop
d_SUBUTXOW'45'noop_3874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3724 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SUBUTXOW'45'noop_3874 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.SUBLEDGER-step-noop
d_SUBLEDGER'45'step'45'noop_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4042 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SUBLEDGER'45'step'45'noop_3890 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.SUBLEDGERS-noop
d_SUBLEDGERS'45'noop_3904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SUBLEDGERS'45'noop_3904 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.Computational-SUBLEDGER
d_Computational'45'SUBLEDGER_3912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBLEDGER_3912 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_4052 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeSubutxow
d_computeSubutxow_3946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeSubutxow_3946 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.Properties.Computational.d_computeProof_3082
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeSubentities
d_computeSubentities_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeSubentities_3956 v0 ~v1 = du_computeSubentities_3956 v0
du_computeSubentities_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeSubentities_3956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational.d_computeProof_3380
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeGov
d_computeGov_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_3966 v0 ~v1 v2 = du_computeGov_3966 v0 v2
du_computeGov_3966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_3966 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOV_2358
            (coe v0))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
         (coe (0 :: Integer)))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeGov
d_completeGov_3976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''7522''42'''__100 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeGov_3976 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeSubutxow
d_completeSubutxow_3986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3724 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeSubutxow_3986 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeSubentities
d_completeSubentities_3996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T__'8866'_'8640''10631'_'44'SUBENTITIES'10632'__3198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeSubentities_3996 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.subUtxoΓ
d_subUtxoΓ_4042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172
d_subUtxoΓ_4042 ~v0 ~v1 v2 ~v3 ~v4 = du_subUtxoΓ_4042 v2
du_subUtxoΓ_4042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3172
du_subUtxoΓ_4042 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3172 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                    (878 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                       (3172 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                       (732 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                          (3172 :: Integer) (1252473578754917138 :: Integer)
                                          "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                          (14 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Treasury"
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
                                             (3172 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                             (946 :: Integer) (1252473578754917138 :: Integer)
                                             "_.UTxO"
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
                                                (3172 :: Integer) (1252473578754917138 :: Integer)
                                                "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                                (128 :: Integer) (9254951203007797098 :: Integer)
                                                "abstract-set-theory.FiniteSetTheory._.Set"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                         (814 :: Integer)
                                                         (1252473578754917138 :: Integer) "_.Script"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                   (3172 :: Integer)
                                                   (1252473578754917138 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv"
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
                                                   (6 :: Integer) (4305008439024043551 :: Integer)
                                                   "Agda.Builtin.Bool.Bool"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3198)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3770
            (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3774
               (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3778
                  (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxo'8320'_3780
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_allScripts_3784
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_isTopLevelValid_3786
                        (coe v0)))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.subentitiesΓ
d_subentitiesΓ_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104
d_subentitiesΓ_4044 v0 ~v1 v2 v3 ~v4
  = du_subentitiesΓ_4044 v0 v2 v3
du_subentitiesΓ_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_SubEntitiesEnv_3104
du_subentitiesΓ_4044 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3104 :: Integer) (10284110136531523473 :: Integer)
                                    "Ledger.Dijkstra.Specification.Entities.SubEntitiesEnv"
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
                                    (218 :: Integer) (10284110136531523473 :: Integer) "_.Epoch"
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
                                       (3104 :: Integer) (10284110136531523473 :: Integer)
                                       "Ledger.Dijkstra.Specification.Entities.SubEntitiesEnv"
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
                                       (732 :: Integer) (10284110136531523473 :: Integer)
                                       "_.PParams"
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
                                          (3104 :: Integer) (10284110136531523473 :: Integer)
                                          "Ledger.Dijkstra.Specification.Entities.SubEntitiesEnv"
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
                                          (128 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Set"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                   (84 :: Integer) (10284110136531523473 :: Integer)
                                                   "_.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                             (3104 :: Integer) (10284110136531523473 :: Integer)
                                             "Ledger.Dijkstra.Specification.Entities.SubEntitiesEnv"
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
                                             (2844 :: Integer) (10284110136531523473 :: Integer)
                                             "Ledger.Dijkstra.Specification.Entities._.Rewards"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.C_constructor_3122)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3770
               (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3774
               (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_allColdCreds_3978
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3776
                     (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_rewards'8320'_3782
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.govΓ
d_govΓ_4046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966
d_govΓ_4046 v0 ~v1 v2 ~v3 v4 v5 = du_govΓ_4046 v0 v2 v4 v5
du_govΓ_4046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966
du_govΓ_4046 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (1966 :: Integer) (6718761352695305391 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                    (640 :: Integer) (7688957888625230675 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.TxId"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                       (coe (1 :: Integer))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                       (1966 :: Integer) (6718761352695305391 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                       (1244 :: Integer) (6718761352695305391 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov._.Epoch"
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
                                          (1966 :: Integer) (6718761352695305391 :: Integer)
                                          "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                          (1362 :: Integer) (6718761352695305391 :: Integer)
                                          "Ledger.Dijkstra.Specification.Gov._.PParams"
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
                                             (1966 :: Integer) (6718761352695305391 :: Integer)
                                             "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                         (1416 :: Integer)
                                                         (6718761352695305391 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Gov._.ScriptHash"
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
                                                (1966 :: Integer) (6718761352695305391 :: Integer)
                                                "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                (400 :: Integer) (6718761352695305391 :: Integer)
                                                "Ledger.Dijkstra.Specification.Gov._.EnactState"
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
                                                   (1966 :: Integer)
                                                   (6718761352695305391 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                   (672 :: Integer) (6718761352695305391 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Gov._.CertState"
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
                                                      (1966 :: Integer)
                                                      (6718761352695305391 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                      (128 :: Integer)
                                                      (9254951203007797098 :: Integer)
                                                      "abstract-set-theory.FiniteSetTheory._.Set"
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
                                                               (1156 :: Integer)
                                                               (6718761352695305391 :: Integer)
                                                               "Ledger.Dijkstra.Specification.Gov._.Credential"
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
                                                                                 (746 :: Integer)
                                                                                 (7688957888625230675 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                       (220 ::
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
                                                                                                (648 ::
                                                                                                   Integer)
                                                                                                (7688957888625230675 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                              (224 :: Integer)
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
                                                                                       (648 ::
                                                                                          Integer)
                                                                                       (7688957888625230675 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_1996)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3800
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v2)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3770
                  (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3774
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3772
                     (coe v1))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3776
                        (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
                                 (coe v3))))))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.computeProof
d_computeProof_4052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_4052 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_isTopLevelValid_3786
                 (coe v2))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 d_computeSubutxow_3946 v0 v1 (coe du_subUtxoΓ_4042 (coe v2))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                                    (coe v3))
                                 v4)
                              (\ v9 ->
                                 case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                          () erased () erased
                                          (coe
                                             du_computeSubentities_3956 v0
                                             (coe du_subentitiesΓ_4044 (coe v0) (coe v2) (coe v3))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                                                (coe v3))
                                             v4)
                                          (\ v12 ->
                                             case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                      (coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                      () erased () erased
                                                      (coe
                                                         du_computeGov_3966 v0
                                                         (coe
                                                            du_govΓ_4046 (coe v0) (coe v2) (coe v4)
                                                            (coe v13))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_GovProposals'43'Votes_3956
                                                            (coe v4)))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3892)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v10)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v16) (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_SUBLEDGER'45'V_4044
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v14)
                                                                                 (coe v17))))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                          () erased () erased
                          (coe
                             d_computeSubutxow_3946 v0 v1 (coe du_subUtxoΓ_4042 (coe v2))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                                (coe v3))
                             v4)
                          (\ v8 ->
                             case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> coe
                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3892)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                                                     (coe v3)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_SUBLEDGER'45'I_4046
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.completeness
d_completeness_4090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'SUBLEDGER'10632'__4042 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_4090 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.Computational-SUBLEDGERS
d_Computational'45'SUBLEDGERS_4222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBLEDGERS_4222 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'SUBLEDGER_3912 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.Computational-LEDGER
d_Computational'45'LEDGER_4224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_4224 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_4388 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeSubledgers
d_computeSubledgers_4258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeSubledgers_4258 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
         (coe d_Computational'45'SUBLEDGER_3912 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeUtxow
d_computeUtxow_4268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_4268 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.Properties.Computational.d_computeProof_3248
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeEntities
d_computeEntities_4278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeEntities_4278 v0 ~v1 = du_computeEntities_4278 v0
du_computeEntities_4278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeEntities_4278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational.d_computeProof_3696
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.computeGov
d_computeGov_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_4288 v0 ~v1 v2 = du_computeGov_4288 v0 v2
du_computeGov_4288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_4288 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Properties.Computational.d_Computational'45'GOV_2358
            (coe v0))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
         (coe (0 :: Integer)))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeSubledgers
d_completeSubledgers_4298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeSubledgers_4298 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeUtxow
d_completeUtxow_4308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3200 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3860 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeUtxow_4308 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeEntities
d_completeEntities_4318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T__'8866'_'8640''10631'_'44'ENTITIES'10632'__3226 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeEntities_4318 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._.completeGov
d_completeGov_4328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''7522''42'''__100 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeGov_4328 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.utxo₀
d_utxo'8320'_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_4366 ~v0 ~v1 ~v2 v3 ~v4 = du_utxo'8320'_4366 v3
du_utxo'8320'_4366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo'8320'_4366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3208
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
         (coe v0))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.allScripts
d_allScripts_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_4368 v0 ~v1 ~v2 v3 v4 = du_allScripts_4368 v0 v3 v4
du_allScripts_4368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allScripts_4368 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4646
      (coe v0) (coe v2) (coe du_utxo'8320'_4366 (coe v1))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.legacyMode
d_legacyMode_4370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Bool
d_legacyMode_4370 v0 ~v1 ~v2 v3 v4 = du_legacyMode_4370 v0 v3 v4
du_legacyMode_4370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  Bool
du_legacyMode_4370 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_isLegacyMode_3664
      (coe v0) (coe du_utxo'8320'_4366 (coe v1))
      (coe du_allScripts_4368 (coe v0) (coe v1) (coe v2)) (coe v2)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.subΓ
d_subΓ_4372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750
d_subΓ_4372 v0 ~v1 v2 v3 v4 = du_subΓ_4372 v0 v2 v3 v4
du_subΓ_4372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_SubLedgerEnv_3750
du_subΓ_4372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3750 :: Integer) (2632180534421049758 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                    (878 :: Integer) (2632180534421049758 :: Integer) "_.Slot"
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
                                       (3750 :: Integer) (2632180534421049758 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                   (822 :: Integer) (2632180534421049758 :: Integer)
                                                   "_.ScriptHash"
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
                                          (3750 :: Integer) (2632180534421049758 :: Integer)
                                          "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                          (732 :: Integer) (2632180534421049758 :: Integer)
                                          "_.PParams"
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
                                             (3750 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                             (2644 :: Integer) (2632180534421049758 :: Integer)
                                             "Ledger.Dijkstra.Specification.Ledger._.EnactState"
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
                                                (3750 :: Integer) (2632180534421049758 :: Integer)
                                                "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                (14 :: Integer) (14798748958053396954 :: Integer)
                                                "Ledger.Prelude.Base.Treasury"
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
                                                   (3750 :: Integer)
                                                   (2632180534421049758 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                   (946 :: Integer) (2632180534421049758 :: Integer)
                                                   "_.UTxO"
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
                                                      (3750 :: Integer)
                                                      (2632180534421049758 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                      (3450 :: Integer)
                                                      (2632180534421049758 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Ledger._.Rewards"
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
                                                         (3750 :: Integer)
                                                         (2632180534421049758 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                         (128 :: Integer)
                                                         (9254951203007797098 :: Integer)
                                                         "abstract-set-theory.FiniteSetTheory._.Set"
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
                                                                  (814 :: Integer)
                                                                  (2632180534421049758 :: Integer)
                                                                  "_.Script"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                            (3750 :: Integer)
                                                            (2632180534421049758 :: Integer)
                                                            "Ledger.Dijkstra.Specification.Ledger.SubLedgerEnv"
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
                                                            (6 :: Integer)
                                                            (4305008439024043551 :: Integer)
                                                            "Agda.Builtin.Bool.Bool"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3788)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3802
            (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3804
               (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3806
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3808
                     (coe v1))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3810
                        (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe du_utxo'8320'_4366 (coe v2))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe du_allScripts_4368 (coe v0) (coe v2) (coe v3))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3738
                                 (coe v3))))))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.entitiesΓ
d_entitiesΓ_4374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080
d_entitiesΓ_4374 v0 ~v1 v2 v3 v4 v5 v6
  = du_entitiesΓ_4374 v0 v2 v3 v4 v5 v6
du_entitiesΓ_4374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.T_EntitiesEnv_3080
du_entitiesΓ_4374 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3080 :: Integer) (10284110136531523473 :: Integer)
                                    "Ledger.Dijkstra.Specification.Entities.EntitiesEnv"
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
                                    (218 :: Integer) (10284110136531523473 :: Integer) "_.Epoch"
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
                                       (3080 :: Integer) (10284110136531523473 :: Integer)
                                       "Ledger.Dijkstra.Specification.Entities.EntitiesEnv"
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
                                       (732 :: Integer) (10284110136531523473 :: Integer)
                                       "_.PParams"
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
                                          (3080 :: Integer) (10284110136531523473 :: Integer)
                                          "Ledger.Dijkstra.Specification.Entities.EntitiesEnv"
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
                                          (128 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Set"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                   (84 :: Integer) (10284110136531523473 :: Integer)
                                                   "_.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                             (3080 :: Integer) (10284110136531523473 :: Integer)
                                             "Ledger.Dijkstra.Specification.Entities.EntitiesEnv"
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
                                             (6 :: Integer) (4305008439024043551 :: Integer)
                                             "Agda.Builtin.Bool.Bool"
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
                                                (3080 :: Integer) (10284110136531523473 :: Integer)
                                                "Ledger.Dijkstra.Specification.Entities.EntitiesEnv"
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
                                                (2844 :: Integer) (10284110136531523473 :: Integer)
                                                "Ledger.Dijkstra.Specification.Entities._.Rewards"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.C_constructor_3102)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3802
               (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3806
               (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_allColdCreds_3978
                  (coe v4)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3808
                     (coe v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe du_legacyMode_4370 (coe v0) (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
                        (coe v5)))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.govΓ
d_govΓ_4380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966
d_govΓ_4380 v0 ~v1 v2 ~v3 v4 v5 = du_govΓ_4380 v0 v2 v4 v5
du_govΓ_4380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_GovEnv_1966
du_govΓ_4380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (1966 :: Integer) (6718761352695305391 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                    (640 :: Integer) (7688957888625230675 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.TxId"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                       (coe (1 :: Integer))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                       (1966 :: Integer) (6718761352695305391 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                       (1244 :: Integer) (6718761352695305391 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov._.Epoch"
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
                                          (1966 :: Integer) (6718761352695305391 :: Integer)
                                          "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                          (1362 :: Integer) (6718761352695305391 :: Integer)
                                          "Ledger.Dijkstra.Specification.Gov._.PParams"
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
                                             (1966 :: Integer) (6718761352695305391 :: Integer)
                                             "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                         (1416 :: Integer)
                                                         (6718761352695305391 :: Integer)
                                                         "Ledger.Dijkstra.Specification.Gov._.ScriptHash"
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
                                                (1966 :: Integer) (6718761352695305391 :: Integer)
                                                "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                (400 :: Integer) (6718761352695305391 :: Integer)
                                                "Ledger.Dijkstra.Specification.Gov._.EnactState"
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
                                                   (1966 :: Integer)
                                                   (6718761352695305391 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                   (672 :: Integer) (6718761352695305391 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Gov._.CertState"
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
                                                      (1966 :: Integer)
                                                      (6718761352695305391 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Gov.GovEnv"
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
                                                      (128 :: Integer)
                                                      (9254951203007797098 :: Integer)
                                                      "abstract-set-theory.FiniteSetTheory._.Set"
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
                                                               (1156 :: Integer)
                                                               (6718761352695305391 :: Integer)
                                                               "Ledger.Dijkstra.Specification.Gov._.Credential"
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
                                                                                 (746 :: Integer)
                                                                                 (7688957888625230675 ::
                                                                                    Integer)
                                                                                 "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                       (220 ::
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
                                                                                                (648 ::
                                                                                                   Integer)
                                                                                                (7688957888625230675 ::
                                                                                                   Integer)
                                                                                                "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                              (224 :: Integer)
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
                                                                                       (648 ::
                                                                                          Integer)
                                                                                       (7688957888625230675 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.C_constructor_1996)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3800
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
               (coe v2)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1370
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3802
                  (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3806
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3804
                     (coe v1))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3808
                        (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1378
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1428
                                 (coe v3))))))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.utxoΓ
d_utxoΓ_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140
d_utxoΓ_4384 v0 ~v1 v2 v3 v4 = du_utxoΓ_4384 v0 v2 v3 v4
du_utxoΓ_4384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3140
du_utxoΓ_4384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
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
                                    (3140 :: Integer) (1252473578754917138 :: Integer)
                                    "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                    (878 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                       (3140 :: Integer) (1252473578754917138 :: Integer)
                                       "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                       (732 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                          (3140 :: Integer) (1252473578754917138 :: Integer)
                                          "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                          (14 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Treasury"
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
                                             (3140 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                             (946 :: Integer) (1252473578754917138 :: Integer)
                                             "_.UTxO"
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
                                                (3140 :: Integer) (1252473578754917138 :: Integer)
                                                "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                                (2852 :: Integer) (1252473578754917138 :: Integer)
                                                "Ledger.Dijkstra.Specification.Utxo._.Pools"
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
                                                   (3140 :: Integer)
                                                   (1252473578754917138 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                                   (128 :: Integer) (9254951203007797098 :: Integer)
                                                   "abstract-set-theory.FiniteSetTheory._.Set"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                            (814 :: Integer)
                                                            (1252473578754917138 :: Integer)
                                                            "_.Script"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                                      (3140 :: Integer)
                                                      (1252473578754917138 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Utxo.UTxOEnv"
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
                                                      (6 :: Integer)
                                                      (4305008439024043551 :: Integer)
                                                      "Agda.Builtin.Bool.Bool"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3170)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3802
            (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3806
               (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3810
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe du_utxo'8320'_4366 (coe v2))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1394
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1430
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe du_allScripts_4368 (coe v0) (coe v2) (coe v3))
                        (coe du_legacyMode_4370 (coe v0) (coe v2) (coe v3))))))))
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.computeProof
d_computeProof_4388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_4388 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3738
                 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 d_computeSubledgers_4258 v0 v1
                                 (coe du_subΓ_4372 (coe v0) (coe v2) (coe v3) (coe v4)) v3
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                       (coe v4))))
                              (\ v9 ->
                                 case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                          () erased () erased
                                          (coe
                                             du_computeEntities_4278 v0
                                             (coe
                                                du_entitiesΓ_4374 (coe v0) (coe v2) (coe v3)
                                                (coe v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870)
                                                   v10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                                                   v3))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1756
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3872)
                                                v10)
                                             v4)
                                          (\ v12 ->
                                             case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                      (coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                      () erased () erased
                                                      (coe
                                                         du_computeGov_4288 v0
                                                         (coe
                                                            du_govΓ_4380 (coe v0) (coe v2) (coe v4)
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2018
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3870)
                                                            v10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_GovProposals'43'Votes_3956
                                                            (coe v4)))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                  (coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                  () erased () erased
                                                                  (coe
                                                                     d_computeUtxow_4268 v0 v1
                                                                     (coe
                                                                        du_utxoΓ_4384 (coe v0)
                                                                        (coe v2) (coe v3) (coe v4))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3228
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3866)
                                                                        v10)
                                                                     v4)
                                                                  (\ v18 ->
                                                                     case coe v18 of
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                         -> coe
                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3892)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v19)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_rmOrphanDRepVotes_3960
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v13)
                                                                                             (coe
                                                                                                v16))
                                                                                          (coe
                                                                                             v13))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'V_4060
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                                                                                       (coe v10))
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
                                                                                       (coe v10))
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                                                                                       (coe v10))
                                                                                    v16
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v8)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe v11)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                v14)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   v17)
                                                                                                (coe
                                                                                                   v20)))))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                          () erased () erased
                          (coe
                             d_computeSubledgers_4258 v0 v1
                             (coe du_subΓ_4372 (coe v0) (coe v2) (coe v3) (coe v4)) v3
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3826
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3732
                                   (coe v4))))
                          (\ v8 ->
                             case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> coe
                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                      () erased () erased
                                      (coe
                                         d_computeUtxow_4268 v0 v1
                                         (coe du_utxoΓ_4384 (coe v0) (coe v2) (coe v3) (coe v4))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3838
                                            (coe v3))
                                         v4)
                                      (\ v11 ->
                                         case coe v11 of
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                             -> coe
                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3892)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v12)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3840
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3842
                                                                 (coe v3)))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'I_4070
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v10) (coe v13)))))
                                           _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational._._._.go.completeness
d_completeness_4438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3712 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__4050 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_4438 = erased
-- Ledger.Dijkstra.Specification.Ledger.Properties.Computational.Computational-LEDGERS
d_Computational'45'LEDGERS_4736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3164 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_4736 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'LEDGER_4224 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
