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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_518 a0 = ()
-- _.epoch
d_epoch_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_600 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.Tx.body
d_body_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- _.Tx.isValid
d_isValid_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Bool
d_isValid_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe v0)
-- _.Tx.txAD
d_txAD_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Maybe AgdaAny
d_txAD_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe v0)
-- _.Tx.txsize
d_txsize_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_txsize_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe v0)
-- _.Tx.wits
d_wits_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2708 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1890 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  ()
d_GovState_1896 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1898 ~v0 ~v1 = du_HasCast'45'GovEnv_1898
du_HasCast'45'GovEnv_1898 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1898
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2740
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1940 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1960 v0 ~v1 = du_updateDeposits_1960 v0
du_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2792
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2332
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_donations_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2334
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_fees_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2330 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1994 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2008 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2042 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2114 ~v0 ~v1 = du_HasCast'45'CertEnv_2114
du_HasCast'45'CertEnv_2114 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1474
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1430
d_dState_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1474 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1450
d_gState_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1478 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1476 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2444 ~v0 ~v1 = du_HasCast'45'LEnv_2444
du_HasCast'45'LEnv_2444 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2444
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2756
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2446 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2450 ~v0 ~v1 = du_allColdCreds_2450
du_allColdCreds_2450 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2824
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2452 v0 ~v1 = du_rmOrphanDRepVotes_2452 v0
du_rmOrphanDRepVotes_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2806
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2454 ~v0 ~v1 = du_txgov_2454
du_txgov_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2454
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2760
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
d_enactState_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2690
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2688
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  Maybe AgdaAny
d_ppolicy_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2686
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  AgdaAny
d_slot_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2684
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  Integer
d_treasury_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2692
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2468 a0 a1 = ()
data T_LState_2468
  = C_'10214'_'44'_'44'_'10215''737'_2482 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2476 ::
  T_LState_2468 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_utxoSt_2476 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2482 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2478 ::
  T_LState_2468 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2478 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2482 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2480 ::
  T_LState_2468 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
d_certState_2480 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2482 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2484 ~v0 ~v1 = du_HasCast'45'LState_2484
du_HasCast'45'LState_2484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2484
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
                                 (2468 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1940 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
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
                                    (2468 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1896 :: Integer) (16262344046643431141 :: Integer)
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
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2468 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2042 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2482))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2502 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2502
  = C_LEDGER'45'V_2598 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2674 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
d_certState_2506 ~v0 ~v1 v2 = du_certState_2506 v2
du_certState_2506 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
du_certState_2506 v0
  = coe
      d_certState_2480 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2508 ~v0 ~v1 v2 = du_govSt_2508 v2
du_govSt_2508 ::
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2508 v0
  = coe d_govSt_2478 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_utxoSt_2510 ~v0 ~v1 v2 = du_utxoSt_2510 v2
du_utxoSt_2510 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
du_utxoSt_2510 v0
  = coe d_utxoSt_2476 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_txCerts_2530 ~v0 ~v1 v2 = du_txCerts_2530 v2
du_txCerts_2530 ::
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
du_txCerts_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_2538 ~v0 ~v1 v2 = du_txGovVotes_2538 v2
du_txGovVotes_2538 ::
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
du_txGovVotes_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_txId_2540 ~v0 ~v1 v2 = du_txId_2540 v2
du_txId_2540 :: T_GeneralizeTel_8833 -> AgdaAny
du_txId_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2550 ~v0 ~v1 v2 = du_txWithdrawals_2550 v2
du_txWithdrawals_2550 ::
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
d_enactState_2554 ~v0 ~v1 v2 = du_enactState_2554 v2
du_enactState_2554 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
du_enactState_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2690
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2556 ~v0 ~v1 v2 = du_pparams_2556 v2
du_pparams_2556 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2688
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> Maybe AgdaAny
d_ppolicy_2558 ~v0 ~v1 v2 = du_ppolicy_2558 v2
du_ppolicy_2558 :: T_GeneralizeTel_8833 -> Maybe AgdaAny
du_ppolicy_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2686
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_slot_2560 ~v0 ~v1 v2 = du_slot_2560 v2
du_slot_2560 :: T_GeneralizeTel_8833 -> AgdaAny
du_slot_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2684
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1430
d_dState_2566 ~v0 ~v1 v2 = du_dState_2566 v2
du_dState_2566 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1430
du_dState_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1474
      (coe
         d_certState_2480 (coe d_'46'generalizedField'45's_8821 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2576 ~v0 ~v1 v2 = du_rewards_2576 v2
du_rewards_2576 ::
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1444
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1474
         (coe
            d_certState_2480 (coe d_'46'generalizedField'45's_8821 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2590 ~v0 ~v1 v2 = du_pparams_2590 v2
du_pparams_2590 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2688
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_slot_2594 ~v0 ~v1 v2 = du_slot_2594 v2
du_slot_2594 :: T_GeneralizeTel_8833 -> AgdaAny
du_slot_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2684
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_8833 -> Integer
d_treasury_2596 ~v0 ~v1 v2 = du_treasury_2596 v2
du_treasury_2596 :: T_GeneralizeTel_8833 -> Integer
du_treasury_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2692
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
d_certState_2602 ~v0 ~v1 v2 = du_certState_2602 v2
du_certState_2602 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
du_certState_2602 v0
  = coe
      d_certState_2480 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2604 ~v0 ~v1 v2 = du_govSt_2604 v2
du_govSt_2604 ::
  T_GeneralizeTel_13923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2604 v0
  = coe d_govSt_2478 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_utxoSt_2606 ~v0 ~v1 v2 = du_utxoSt_2606 v2
du_utxoSt_2606 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
du_utxoSt_2606 v0
  = coe
      d_utxoSt_2476 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2666 ~v0 ~v1 v2 = du_pparams_2666 v2
du_pparams_2666 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2688
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 -> AgdaAny
d_slot_2670 ~v0 ~v1 v2 = du_slot_2670 v2
du_slot_2670 :: T_GeneralizeTel_13923 -> AgdaAny
du_slot_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2684
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_13923 -> Integer
d_treasury_2672 ~v0 ~v1 v2 = du_treasury_2672 v2
du_treasury_2672 :: T_GeneralizeTel_13923 -> Integer
du_treasury_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2692
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672 ->
  T_LState_2468 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354] ->
  T_LState_2468 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2692 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8821 ::
  T_GeneralizeTel_8833 -> T_LState_2468
d_'46'generalizedField'45's_8821 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8823 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_8823 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8825 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672
d_'46'generalizedField'45'Γ_8825 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8827 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45'utxoSt''_8827 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8829 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
d_'46'generalizedField'45'certState''_8829 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8831 ::
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8831 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8833 a0 a1 = ()
data T_GeneralizeTel_8833
  = C_mkGeneralizeTel_8835 T_LState_2468
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1466
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13915 ::
  T_GeneralizeTel_13923 -> T_LState_2468
d_'46'generalizedField'45's_13915 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13917 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_13917 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13919 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672
d_'46'generalizedField'45'Γ_13919 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13921 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_'46'generalizedField'45'utxoSt''_13921 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13923 a0 a1 = ()
data T_GeneralizeTel_13923
  = C_mkGeneralizeTel_13925 T_LState_2468
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2672
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
