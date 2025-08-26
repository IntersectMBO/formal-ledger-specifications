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
d_epoch_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
         (coe v0))
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3154
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3160
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3162
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3158
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3122
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3156
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2420 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  ()
d_GovState_1706 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1708 ~v0 ~v1 = du_HasCast'45'GovEnv_1708
du_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1708
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2450
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1766 v0 ~v1 = du_updateDeposits_1766 v0
du_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2534
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2082
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068 ->
  Integer
d_donations_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2084
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068 ->
  Integer
d_fees_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2080 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2078 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1800 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1068 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1032] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1842 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1902 ~v0 ~v1 = du_HasCast'45'CertEnv_1902
du_HasCast'45'CertEnv_1902 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1296
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1264
d_dState_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1284
d_gState_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1312 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1166
d_pState_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1310 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2180 ~v0 ~v1 = du_HasCast'45'LEnv_2180
du_HasCast'45'LEnv_2180 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2464
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2182 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2184 ~v0 ~v1 = du_allColdCreds_2184
du_allColdCreds_2184 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2536
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2186 v0 ~v1 = du_rmOrphanDRepVotes_2186 v0
du_rmOrphanDRepVotes_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2516
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2188 ~v0 ~v1 = du_txgov_2188
du_txgov_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2188
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2468
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2414
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2412
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  Maybe AgdaAny
d_ppolicy_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2410
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  AgdaAny
d_slot_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2408
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  Integer
d_treasury_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2416
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2202 a0 a1 = ()
data T_LState_2202
  = C_'10214'_'44'_'44'_'10215''737'_2216 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2210 ::
  T_LState_2202 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_utxoSt_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2216 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2212 ::
  T_LState_2202 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2212 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2216 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2214 ::
  T_LState_2202 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_certState_2214 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2216 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2218 ~v0 ~v1 = du_HasCast'45'LState_2218
du_HasCast'45'LState_2218 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2218
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
                                 (2202 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2202 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2202 :: Integer) (16262344046643431141 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''737'_2216))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2236 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2236
  = C_LEDGER'45'V_2334 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2412 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_certState_2240 ~v0 ~v1 v2 = du_certState_2240 v2
du_certState_2240 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
du_certState_2240 v0
  = coe
      d_certState_2214 (coe d_'46'generalizedField'45's_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2242 ~v0 ~v1 v2 = du_govSt_2242 v2
du_govSt_2242 ::
  T_GeneralizeTel_8571 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2242 v0
  = coe d_govSt_2212 (coe d_'46'generalizedField'45's_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_utxoSt_2244 ~v0 ~v1 v2 = du_utxoSt_2244 v2
du_utxoSt_2244 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
du_utxoSt_2244 v0
  = coe d_utxoSt_2210 (coe d_'46'generalizedField'45's_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1032]
d_txcerts_2266 ~v0 ~v1 v2 = du_txcerts_2266 v2
du_txcerts_2266 ::
  T_GeneralizeTel_8571 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1032]
du_txcerts_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3154
         (coe d_'46'generalizedField'45'tx_8561 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> AgdaAny
d_txid_2272 ~v0 ~v1 v2 = du_txid_2272 v2
du_txid_2272 :: T_GeneralizeTel_8571 -> AgdaAny
du_txid_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3024
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3154
         (coe d_'46'generalizedField'45'tx_8561 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_2284 ~v0 ~v1 v2 = du_txvote_2284 v2
du_txvote_2284 ::
  T_GeneralizeTel_8571 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
du_txvote_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3010
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3154
         (coe d_'46'generalizedField'45'tx_8561 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2286 ~v0 ~v1 v2 = du_txwdrls_2286 v2
du_txwdrls_2286 ::
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3154
         (coe d_'46'generalizedField'45'tx_8561 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2290 ~v0 ~v1 v2 = du_enactState_2290 v2
du_enactState_2290 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
du_enactState_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2414
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2292 ~v0 ~v1 v2 = du_pparams_2292 v2
du_pparams_2292 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2412
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> Maybe AgdaAny
d_ppolicy_2294 ~v0 ~v1 v2 = du_ppolicy_2294 v2
du_ppolicy_2294 :: T_GeneralizeTel_8571 -> Maybe AgdaAny
du_ppolicy_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2410
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> AgdaAny
d_slot_2296 ~v0 ~v1 v2 = du_slot_2296 v2
du_slot_2296 :: T_GeneralizeTel_8571 -> AgdaAny
du_slot_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2408
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1264
d_dState_2302 ~v0 ~v1 v2 = du_dState_2302 v2
du_dState_2302 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1264
du_dState_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
      (coe
         d_certState_2214 (coe d_'46'generalizedField'45's_8559 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2312 ~v0 ~v1 v2 = du_rewards_2312 v2
du_rewards_2312 ::
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1308
         (coe
            d_certState_2214 (coe d_'46'generalizedField'45's_8559 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2326 ~v0 ~v1 v2 = du_pparams_2326 v2
du_pparams_2326 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2412
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> AgdaAny
d_slot_2330 ~v0 ~v1 v2 = du_slot_2330 v2
du_slot_2330 :: T_GeneralizeTel_8571 -> AgdaAny
du_slot_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2408
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_8571 -> Integer
d_treasury_2332 ~v0 ~v1 v2 = du_treasury_2332 v2
du_treasury_2332 :: T_GeneralizeTel_8571 -> Integer
du_treasury_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2416
      (coe d_'46'generalizedField'45'Γ_8563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_certState_2338 ~v0 ~v1 v2 = du_certState_2338 v2
du_certState_2338 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
du_certState_2338 v0
  = coe
      d_certState_2214 (coe d_'46'generalizedField'45's_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2340 ~v0 ~v1 v2 = du_govSt_2340 v2
du_govSt_2340 ::
  T_GeneralizeTel_13601 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2340 v0
  = coe d_govSt_2212 (coe d_'46'generalizedField'45's_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_utxoSt_2342 ~v0 ~v1 v2 = du_utxoSt_2342 v2
du_utxoSt_2342 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
du_utxoSt_2342 v0
  = coe
      d_utxoSt_2210 (coe d_'46'generalizedField'45's_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2404 ~v0 ~v1 v2 = du_pparams_2404 v2
du_pparams_2404 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2412
      (coe d_'46'generalizedField'45'Γ_13597 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 -> AgdaAny
d_slot_2408 ~v0 ~v1 v2 = du_slot_2408 v2
du_slot_2408 :: T_GeneralizeTel_13601 -> AgdaAny
du_slot_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2408
      (coe d_'46'generalizedField'45'Γ_13597 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  T_GeneralizeTel_13601 -> Integer
d_treasury_2410 ~v0 ~v1 v2 = du_treasury_2410 v2
du_treasury_2410 :: T_GeneralizeTel_13601 -> Integer
du_treasury_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2416
      (coe d_'46'generalizedField'45'Γ_13597 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396 ->
  T_LState_2202 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142] ->
  T_LState_2202 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2430 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8559 ::
  T_GeneralizeTel_8571 -> T_LState_2202
d_'46'generalizedField'45's_8559 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8561 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142
d_'46'generalizedField'45'tx_8561 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8563 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396
d_'46'generalizedField'45'Γ_8563 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8565 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_'46'generalizedField'45'utxoSt''_8565 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8567 ::
  T_GeneralizeTel_8571 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
d_'46'generalizedField'45'certState''_8567 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8569 ::
  T_GeneralizeTel_8571 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8569 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8571 a0 a1 = ()
data T_GeneralizeTel_8571
  = C_mkGeneralizeTel_8573 T_LState_2202
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1300
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13593 ::
  T_GeneralizeTel_13601 -> T_LState_2202
d_'46'generalizedField'45's_13593 v0
  = case coe v0 of
      C_mkGeneralizeTel_13603 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13595 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142
d_'46'generalizedField'45'tx_13595 v0
  = case coe v0 of
      C_mkGeneralizeTel_13603 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13597 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396
d_'46'generalizedField'45'Γ_13597 v0
  = case coe v0 of
      C_mkGeneralizeTel_13603 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13599 ::
  T_GeneralizeTel_13601 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
d_'46'generalizedField'45'utxoSt''_13599 v0
  = case coe v0 of
      C_mkGeneralizeTel_13603 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13601 a0 a1 = ()
data T_GeneralizeTel_13601
  = C_mkGeneralizeTel_13603 T_LState_2202
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3142
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2396
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2068
