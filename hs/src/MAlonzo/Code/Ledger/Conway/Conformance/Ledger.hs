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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  ()
d_GovState_1706 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1708 ~v0 ~v1 = du_HasCast'45'GovEnv_1708
du_HasCast'45'GovEnv_1708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1708
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2448
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1766 v0 ~v1 = du_updateDeposits_1766 v0
du_updateDeposits_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2532
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2080
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_donations_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2082
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  Integer
d_fees_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2078 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2076 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1800 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1064 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1814 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1842 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1902 ~v0 ~v1 = du_HasCast'45'CertEnv_1902
du_HasCast'45'CertEnv_1902 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1292
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1262
d_dState_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1282
d_gState_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1310 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1162
d_pState_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1308 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2178 ~v0 ~v1 = du_HasCast'45'LEnv_2178
du_HasCast'45'LEnv_2178 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2462
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2180 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2182 ~v0 ~v1 = du_allColdCreds_2182
du_allColdCreds_2182 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2534
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2184 v0 ~v1 = du_rmOrphanDRepVotes_2184 v0
du_rmOrphanDRepVotes_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2514
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2186 ~v0 ~v1 = du_txgov_2186
du_txgov_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2186
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2466
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2412
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2410
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  Maybe AgdaAny
d_ppolicy_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2408
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  AgdaAny
d_slot_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  Integer
d_treasury_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2414
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2200 a0 a1 = ()
data T_LState_2200
  = C_'10214'_'44'_'44'_'10215''737'_2214 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2208 ::
  T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_utxoSt_2208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2214 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2210 ::
  T_LState_2200 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2214 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2212 ::
  T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
d_certState_2212 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2214 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2216 ~v0 ~v1 = du_HasCast'45'LState_2216
du_HasCast'45'LState_2216 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2216
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
                                 (2200 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2200 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2200 :: Integer) (16262344046643431141 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''737'_2214))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2234 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2234
  = C_LEDGER'45'V_2332 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2410 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
d_certState_2238 ~v0 ~v1 v2 = du_certState_2238 v2
du_certState_2238 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
du_certState_2238 v0
  = coe
      d_certState_2212 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2240 ~v0 ~v1 v2 = du_govSt_2240 v2
du_govSt_2240 ::
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2240 v0
  = coe d_govSt_2210 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_utxoSt_2242 ~v0 ~v1 v2 = du_utxoSt_2242 v2
du_utxoSt_2242 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
du_utxoSt_2242 v0
  = coe d_utxoSt_2208 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_2264 ~v0 ~v1 v2 = du_txcerts_2264 v2
du_txcerts_2264 ::
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
du_txcerts_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_txid_2270 ~v0 ~v1 v2 = du_txid_2270 v2
du_txid_2270 :: T_GeneralizeTel_8567 -> AgdaAny
du_txid_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_2282 ~v0 ~v1 v2 = du_txvote_2282 v2
du_txvote_2282 ::
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
du_txvote_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2284 ~v0 ~v1 v2 = du_txwdrls_2284 v2
du_txwdrls_2284 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_enactState_2288 ~v0 ~v1 v2 = du_enactState_2288 v2
du_enactState_2288 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
du_enactState_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2412
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2290 ~v0 ~v1 v2 = du_pparams_2290 v2
du_pparams_2290 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2410
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> Maybe AgdaAny
d_ppolicy_2292 ~v0 ~v1 v2 = du_ppolicy_2292 v2
du_ppolicy_2292 :: T_GeneralizeTel_8567 -> Maybe AgdaAny
du_ppolicy_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2408
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_slot_2294 ~v0 ~v1 v2 = du_slot_2294 v2
du_slot_2294 :: T_GeneralizeTel_8567 -> AgdaAny
du_slot_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2406
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1262
d_dState_2300 ~v0 ~v1 v2 = du_dState_2300 v2
du_dState_2300 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1262
du_dState_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
      (coe
         d_certState_2212 (coe d_'46'generalizedField'45's_8555 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2310 ~v0 ~v1 v2 = du_rewards_2310 v2
du_rewards_2310 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
         (coe
            d_certState_2212 (coe d_'46'generalizedField'45's_8555 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2324 ~v0 ~v1 v2 = du_pparams_2324 v2
du_pparams_2324 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2410
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_slot_2328 ~v0 ~v1 v2 = du_slot_2328 v2
du_slot_2328 :: T_GeneralizeTel_8567 -> AgdaAny
du_slot_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2406
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_8567 -> Integer
d_treasury_2330 ~v0 ~v1 v2 = du_treasury_2330 v2
du_treasury_2330 :: T_GeneralizeTel_8567 -> Integer
du_treasury_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2414
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
d_certState_2336 ~v0 ~v1 v2 = du_certState_2336 v2
du_certState_2336 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
du_certState_2336 v0
  = coe
      d_certState_2212 (coe d_'46'generalizedField'45's_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2338 ~v0 ~v1 v2 = du_govSt_2338 v2
du_govSt_2338 ::
  T_GeneralizeTel_13597 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2338 v0
  = coe d_govSt_2210 (coe d_'46'generalizedField'45's_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_utxoSt_2340 ~v0 ~v1 v2 = du_utxoSt_2340 v2
du_utxoSt_2340 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
du_utxoSt_2340 v0
  = coe
      d_utxoSt_2208 (coe d_'46'generalizedField'45's_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_pparams_2402 ~v0 ~v1 v2 = du_pparams_2402 v2
du_pparams_2402 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_pparams_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2410
      (coe d_'46'generalizedField'45'Γ_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 -> AgdaAny
d_slot_2406 ~v0 ~v1 v2 = du_slot_2406 v2
du_slot_2406 :: T_GeneralizeTel_13597 -> AgdaAny
du_slot_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2406
      (coe d_'46'generalizedField'45'Γ_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_13597 -> Integer
d_treasury_2408 ~v0 ~v1 v2 = du_treasury_2408 v2
du_treasury_2408 :: T_GeneralizeTel_13597 -> Integer
du_treasury_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2414
      (coe d_'46'generalizedField'45'Γ_13593 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  T_LState_2200 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140] ->
  T_LState_2200 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2428 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8555 ::
  T_GeneralizeTel_8567 -> T_LState_2200
d_'46'generalizedField'45's_8555 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8557 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
d_'46'generalizedField'45'tx_8557 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8559 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394
d_'46'generalizedField'45'Γ_8559 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8561 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45'utxoSt''_8561 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8563 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
d_'46'generalizedField'45'certState''_8563 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8565 ::
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8565 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8567 a0 a1 = ()
data T_GeneralizeTel_8567
  = C_mkGeneralizeTel_8569 T_LState_2200
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13589 ::
  T_GeneralizeTel_13597 -> T_LState_2200
d_'46'generalizedField'45's_13589 v0
  = case coe v0 of
      C_mkGeneralizeTel_13599 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13591 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
d_'46'generalizedField'45'tx_13591 v0
  = case coe v0 of
      C_mkGeneralizeTel_13599 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13593 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394
d_'46'generalizedField'45'Γ_13593 v0
  = case coe v0 of
      C_mkGeneralizeTel_13599 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13595 ::
  T_GeneralizeTel_13597 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_'46'generalizedField'45'utxoSt''_13595 v0
  = case coe v0 of
      C_mkGeneralizeTel_13599 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13597 a0 a1 = ()
data T_GeneralizeTel_13597
  = C_mkGeneralizeTel_13599 T_LState_2200
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
