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
d_Tx_414 a0 = ()
-- _.epoch
d_epoch_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1572
         (coe v0))
-- _.Tx.body
d_body_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954
d_body_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
      (coe v0)
-- _.Tx.isValid
d_isValid_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Bool
d_isValid_1508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3138
      (coe v0)
-- _.Tx.txAD
d_txAD_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Maybe AgdaAny
d_txAD_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3140
      (coe v0)
-- _.Tx.txsize
d_txsize_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  Integer
d_txsize_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3136
      (coe v0)
-- _.Tx.wits
d_wits_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3100
d_wits_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3134
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1678 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  ()
d_GovState_1682 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1684 ~v0 ~v1 = du_HasCast'45'GovEnv_1684
du_HasCast'45'GovEnv_1684 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1684
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2458
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1724 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1742 v0 ~v1 = du_updateDeposits_1742 v0
du_updateDeposits_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2616
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2160
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  Integer
d_donations_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2162
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  Integer
d_fees_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2156 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1846 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1860 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1890 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1954 ~v0 ~v1 = du_HasCast'45'CertEnv_1954
du_HasCast'45'CertEnv_1954 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1954
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1342
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1282
d_dState_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1326 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1302
d_gState_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1330 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1170
d_pState_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1328 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2258 ~v0 ~v1 = du_HasCast'45'LEnv_2258
du_HasCast'45'LEnv_2258 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2544
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2260 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2262 ~v0 ~v1 = du_allColdCreds_2262
du_allColdCreds_2262 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2614
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1272 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2264 v0 ~v1 = du_rmOrphanDRepVotes_2264 v0
du_rmOrphanDRepVotes_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1272 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2594
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2266 ~v0 ~v1 = du_txgov_2266
du_txgov_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2954 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2266
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2548
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
d_enactState_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2494
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2492
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  Maybe AgdaAny
d_ppolicy_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2490
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  AgdaAny
d_slot_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2488
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  Integer
d_treasury_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2496
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2280 a0 a1 = ()
data T_LState_2280
  = C_'10214'_'44'_'44'_'10215''737'_2294 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2288 ::
  T_LState_2280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_utxoSt_2288 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2294 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2290 ::
  T_LState_2280 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2290 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2294 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2292 ::
  T_LState_2280 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_certState_2292 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2294 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2296 ~v0 ~v1 = du_HasCast'45'LState_2296
du_HasCast'45'LState_2296 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2296
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
                                 (2280 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1724 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2280 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1682 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2280 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1890 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2294))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2314 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2314
  = C_LEDGER'45'V_2410 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2486 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_certState_2318 ~v0 ~v1 v2 = du_certState_2318 v2
du_certState_2318 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
du_certState_2318 v0
  = coe
      d_certState_2292 (coe d_'46'generalizedField'45's_8757 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2320 ~v0 ~v1 v2 = du_govSt_2320 v2
du_govSt_2320 ::
  T_GeneralizeTel_8769 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2320 v0
  = coe d_govSt_2290 (coe d_'46'generalizedField'45's_8757 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_utxoSt_2322 ~v0 ~v1 v2 = du_utxoSt_2322 v2
du_utxoSt_2322 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
du_utxoSt_2322 v0
  = coe d_utxoSt_2288 (coe d_'46'generalizedField'45's_8757 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034]
d_txCerts_2342 ~v0 ~v1 v2 = du_txCerts_2342 v2
du_txCerts_2342 ::
  T_GeneralizeTel_8769 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1034]
du_txCerts_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_8759 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830]
d_txGovVotes_2350 ~v0 ~v1 v2 = du_txGovVotes_2350 v2
du_txGovVotes_2350 ::
  T_GeneralizeTel_8769 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_830]
du_txGovVotes_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3014
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_8759 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> AgdaAny
d_txId_2352 ~v0 ~v1 v2 = du_txId_2352 v2
du_txId_2352 :: T_GeneralizeTel_8769 -> AgdaAny
du_txId_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3000
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_8759 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWdrls
d_txWdrls_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWdrls_2362 ~v0 ~v1 v2 = du_txWdrls_2362 v2
du_txWdrls_2362 ::
  T_GeneralizeTel_8769 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWdrls_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWdrls_3006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3132
         (coe d_'46'generalizedField'45'tx_8759 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
d_enactState_2366 ~v0 ~v1 v2 = du_enactState_2366 v2
du_enactState_2366 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
du_enactState_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2494
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2368 ~v0 ~v1 v2 = du_pparams_2368 v2
du_pparams_2368 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2492
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> Maybe AgdaAny
d_ppolicy_2370 ~v0 ~v1 v2 = du_ppolicy_2370 v2
du_ppolicy_2370 :: T_GeneralizeTel_8769 -> Maybe AgdaAny
du_ppolicy_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2490
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> AgdaAny
d_slot_2372 ~v0 ~v1 v2 = du_slot_2372 v2
du_slot_2372 :: T_GeneralizeTel_8769 -> AgdaAny
du_slot_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2488
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1282
d_dState_2378 ~v0 ~v1 v2 = du_dState_2378 v2
du_dState_2378 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1282
du_dState_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1326
      (coe
         d_certState_2292 (coe d_'46'generalizedField'45's_8757 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2388 ~v0 ~v1 v2 = du_rewards_2388 v2
du_rewards_2388 ::
  T_GeneralizeTel_8769 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1296
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1326
         (coe
            d_certState_2292 (coe d_'46'generalizedField'45's_8757 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2402 ~v0 ~v1 v2 = du_pparams_2402 v2
du_pparams_2402 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2492
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> AgdaAny
d_slot_2406 ~v0 ~v1 v2 = du_slot_2406 v2
du_slot_2406 :: T_GeneralizeTel_8769 -> AgdaAny
du_slot_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2488
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_8769 -> Integer
d_treasury_2408 ~v0 ~v1 v2 = du_treasury_2408 v2
du_treasury_2408 :: T_GeneralizeTel_8769 -> Integer
du_treasury_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2496
      (coe d_'46'generalizedField'45'Γ_8761 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_certState_2414 ~v0 ~v1 v2 = du_certState_2414 v2
du_certState_2414 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
du_certState_2414 v0
  = coe
      d_certState_2292 (coe d_'46'generalizedField'45's_13785 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2416 ~v0 ~v1 v2 = du_govSt_2416 v2
du_govSt_2416 ::
  T_GeneralizeTel_13793 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2416 v0
  = coe d_govSt_2290 (coe d_'46'generalizedField'45's_13785 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_utxoSt_2418 ~v0 ~v1 v2 = du_utxoSt_2418 v2
du_utxoSt_2418 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
du_utxoSt_2418 v0
  = coe
      d_utxoSt_2288 (coe d_'46'generalizedField'45's_13785 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
d_pparams_2478 ~v0 ~v1 v2 = du_pparams_2478 v2
du_pparams_2478 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_266
du_pparams_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2492
      (coe d_'46'generalizedField'45'Γ_13789 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 -> AgdaAny
d_slot_2482 ~v0 ~v1 v2 = du_slot_2482 v2
du_slot_2482 :: T_GeneralizeTel_13793 -> AgdaAny
du_slot_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2488
      (coe d_'46'generalizedField'45'Γ_13789 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  T_GeneralizeTel_13793 -> Integer
d_treasury_2484 ~v0 ~v1 v2 = du_treasury_2484 v2
du_treasury_2484 :: T_GeneralizeTel_13793 -> Integer
du_treasury_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2496
      (coe d_'46'generalizedField'45'Γ_13789 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1972 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476 ->
  T_LState_2280 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120] ->
  T_LState_2280 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2504 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8757 ::
  T_GeneralizeTel_8769 -> T_LState_2280
d_'46'generalizedField'45's_8757 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8759 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
d_'46'generalizedField'45'tx_8759 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8761 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476
d_'46'generalizedField'45'Γ_8761 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8763 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_'46'generalizedField'45'utxoSt''_8763 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8765 ::
  T_GeneralizeTel_8769 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
d_'46'generalizedField'45'certState''_8765 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8767 ::
  T_GeneralizeTel_8769 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8767 v0
  = case coe v0 of
      C_mkGeneralizeTel_8771 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8769 a0 a1 = ()
data T_GeneralizeTel_8769
  = C_mkGeneralizeTel_8771 T_LState_2280
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1318
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13785 ::
  T_GeneralizeTel_13793 -> T_LState_2280
d_'46'generalizedField'45's_13785 v0
  = case coe v0 of
      C_mkGeneralizeTel_13795 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13787 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
d_'46'generalizedField'45'tx_13787 v0
  = case coe v0 of
      C_mkGeneralizeTel_13795 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13789 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476
d_'46'generalizedField'45'Γ_13789 v0
  = case coe v0 of
      C_mkGeneralizeTel_13795 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13791 ::
  T_GeneralizeTel_13793 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
d_'46'generalizedField'45'utxoSt''_13791 v0
  = case coe v0 of
      C_mkGeneralizeTel_13795 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13793 a0 a1 = ()
data T_GeneralizeTel_13793
  = C_mkGeneralizeTel_13795 T_LState_2280
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3120
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2476
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2146
