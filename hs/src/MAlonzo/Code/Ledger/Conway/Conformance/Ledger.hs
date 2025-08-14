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
d_Tx_416 a0 = ()
-- _.epoch
d_epoch_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
         (coe v0))
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2992
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3192
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3198
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3200
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3196
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3160
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3194
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2458 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  ()
d_GovState_1706 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1708 ~v0 ~v1 = du_HasCast'45'GovEnv_1708
du_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1708
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2488
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1766 v0 ~v1 = du_updateDeposits_1766 v0
du_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2612
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2120
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106 ->
  Integer
d_donations_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2122
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106 ->
  Integer
d_fees_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2118 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2116 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1800 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1064 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1842 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1896 ~v0 ~v1 = du_HasCast'45'CertEnv_1896
du_HasCast'45'CertEnv_1896 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1896
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1372
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1302
d_dState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1346 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1322
d_gState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1350 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1182
d_pState_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1348 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2218 ~v0 ~v1 = du_HasCast'45'LEnv_2218
du_HasCast'45'LEnv_2218 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2218
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2522
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2220 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2222 ~v0 ~v1 = du_allColdCreds_2222
du_allColdCreds_2222 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2222
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2594
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1302 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2224 v0 ~v1 = du_rmOrphanDRepVotes_2224 v0
du_rmOrphanDRepVotes_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1302 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2574
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2992 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2226 ~v0 ~v1 = du_txgov_2226
du_txgov_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2992 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2226
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2526
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2472
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2470
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  Maybe AgdaAny
d_ppolicy_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2468
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  AgdaAny
d_slot_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2466
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  Integer
d_treasury_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2474
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2240 a0 a1 = ()
data T_LState_2240
  = C_'10214'_'44'_'44'_'10215''737'_2254 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2248 ::
  T_LState_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
d_utxoSt_2248 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2254 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2250 ::
  T_LState_2240 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2250 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2254 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2252 ::
  T_LState_2240 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
d_certState_2252 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2254 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2256 ~v0 ~v1 = du_HasCast'45'LState_2256
du_HasCast'45'LState_2256 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2256
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
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
                                 (2240 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1748 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2240 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1706 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2240 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1842 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2254))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2274 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2274
  = C_LEDGER'45'V_2372 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2450 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
d_certState_2278 ~v0 ~v1 v2 = du_certState_2278 v2
du_certState_2278 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
du_certState_2278 v0
  = coe
      d_certState_2252 (coe d_'46'generalizedField'45's_8763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2280 ~v0 ~v1 v2 = du_govSt_2280 v2
du_govSt_2280 ::
  T_GeneralizeTel_8775 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2280 v0
  = coe d_govSt_2250 (coe d_'46'generalizedField'45's_8763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
d_utxoSt_2282 ~v0 ~v1 v2 = du_utxoSt_2282 v2
du_utxoSt_2282 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
du_utxoSt_2282 v0
  = coe d_utxoSt_2248 (coe d_'46'generalizedField'45's_8763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_2304 ~v0 ~v1 v2 = du_txcerts_2304 v2
du_txcerts_2304 ::
  T_GeneralizeTel_8775 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
du_txcerts_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3044
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_8765 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> AgdaAny
d_txid_2310 ~v0 ~v1 v2 = du_txid_2310 v2
du_txid_2310 :: T_GeneralizeTel_8775 -> AgdaAny
du_txid_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_8765 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_2322 ~v0 ~v1 v2 = du_txvote_2322 v2
du_txvote_2322 ::
  T_GeneralizeTel_8775 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
du_txvote_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3048
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_8765 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2324 ~v0 ~v1 v2 = du_txwdrls_2324 v2
du_txwdrls_2324 ::
  T_GeneralizeTel_8775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3046
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3192
         (coe d_'46'generalizedField'45'tx_8765 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2328 ~v0 ~v1 v2 = du_enactState_2328 v2
du_enactState_2328 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
du_enactState_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2472
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2330 ~v0 ~v1 v2 = du_pparams_2330 v2
du_pparams_2330 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> Maybe AgdaAny
d_ppolicy_2332 ~v0 ~v1 v2 = du_ppolicy_2332 v2
du_ppolicy_2332 :: T_GeneralizeTel_8775 -> Maybe AgdaAny
du_ppolicy_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2468
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> AgdaAny
d_slot_2334 ~v0 ~v1 v2 = du_slot_2334 v2
du_slot_2334 :: T_GeneralizeTel_8775 -> AgdaAny
du_slot_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1302
d_dState_2340 ~v0 ~v1 v2 = du_dState_2340 v2
du_dState_2340 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1302
du_dState_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1346
      (coe
         d_certState_2252 (coe d_'46'generalizedField'45's_8763 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2350 ~v0 ~v1 v2 = du_rewards_2350 v2
du_rewards_2350 ::
  T_GeneralizeTel_8775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1316
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1346
         (coe
            d_certState_2252 (coe d_'46'generalizedField'45's_8763 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2364 ~v0 ~v1 v2 = du_pparams_2364 v2
du_pparams_2364 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> AgdaAny
d_slot_2368 ~v0 ~v1 v2 = du_slot_2368 v2
du_slot_2368 :: T_GeneralizeTel_8775 -> AgdaAny
du_slot_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_8775 -> Integer
d_treasury_2370 ~v0 ~v1 v2 = du_treasury_2370 v2
du_treasury_2370 :: T_GeneralizeTel_8775 -> Integer
du_treasury_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2474
      (coe d_'46'generalizedField'45'Γ_8767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
d_certState_2376 ~v0 ~v1 v2 = du_certState_2376 v2
du_certState_2376 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
du_certState_2376 v0
  = coe
      d_certState_2252 (coe d_'46'generalizedField'45's_13797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2378 ~v0 ~v1 v2 = du_govSt_2378 v2
du_govSt_2378 ::
  T_GeneralizeTel_13805 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2378 v0
  = coe d_govSt_2250 (coe d_'46'generalizedField'45's_13797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
d_utxoSt_2380 ~v0 ~v1 v2 = du_utxoSt_2380 v2
du_utxoSt_2380 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
du_utxoSt_2380 v0
  = coe
      d_utxoSt_2248 (coe d_'46'generalizedField'45's_13797 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2442 ~v0 ~v1 v2 = du_pparams_2442 v2
du_pparams_2442 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_13801 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 -> AgdaAny
d_slot_2446 ~v0 ~v1 v2 = du_slot_2446 v2
du_slot_2446 :: T_GeneralizeTel_13805 -> AgdaAny
du_slot_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_13801 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  T_GeneralizeTel_13805 -> Integer
d_treasury_2448 ~v0 ~v1 v2 = du_treasury_2448 v2
du_treasury_2448 :: T_GeneralizeTel_13805 -> Integer
du_treasury_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2474
      (coe d_'46'generalizedField'45'Γ_13801 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454 ->
  T_LState_2240 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180] ->
  T_LState_2240 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8763 ::
  T_GeneralizeTel_8775 -> T_LState_2240
d_'46'generalizedField'45's_8763 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8765 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180
d_'46'generalizedField'45'tx_8765 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8767 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454
d_'46'generalizedField'45'Γ_8767 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8769 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
d_'46'generalizedField'45'utxoSt''_8769 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8771 ::
  T_GeneralizeTel_8775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
d_'46'generalizedField'45'certState''_8771 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8773 ::
  T_GeneralizeTel_8775 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8773 v0
  = case coe v0 of
      C_mkGeneralizeTel_8777 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8775 a0 a1 = ()
data T_GeneralizeTel_8775
  = C_mkGeneralizeTel_8777 T_LState_2240
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1338
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13797 ::
  T_GeneralizeTel_13805 -> T_LState_2240
d_'46'generalizedField'45's_13797 v0
  = case coe v0 of
      C_mkGeneralizeTel_13807 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13799 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180
d_'46'generalizedField'45'tx_13799 v0
  = case coe v0 of
      C_mkGeneralizeTel_13807 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13801 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454
d_'46'generalizedField'45'Γ_13801 v0
  = case coe v0 of
      C_mkGeneralizeTel_13807 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13803 ::
  T_GeneralizeTel_13805 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
d_'46'generalizedField'45'utxoSt''_13803 v0
  = case coe v0 of
      C_mkGeneralizeTel_13807 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13805 a0 a1 = ()
data T_GeneralizeTel_13805
  = C_mkGeneralizeTel_13807 T_LState_2240
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3180
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2454
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2106
