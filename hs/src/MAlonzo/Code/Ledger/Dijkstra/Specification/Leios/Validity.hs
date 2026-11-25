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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasSize-Tx
d_HasSize'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4194
d_HasSize'45'Tx_540 ~v0 = du_HasSize'45'Tx_540
du_HasSize'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4194
du_HasSize'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4612
-- _.TopLevelTx
d_TopLevelTx_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_924 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
d_HasPParams'45'LedgerEnv_2710 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2710
du_HasPParams'45'LedgerEnv_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_748
du_HasPParams'45'LedgerEnv_2710
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3930
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv
d_LedgerEnv_2732 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState
d_LedgerState_2736 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.enactState
d_enactState_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1332
d_enactState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3920
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.pparams
d_pparams_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_pparams_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3918
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.ppolicy
d_ppolicy_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Maybe AgdaAny
d_ppolicy_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.slot
d_slot_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  AgdaAny
d_slot_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.treasury
d_treasury_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3902 ->
  Integer
d_treasury_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.certState
d_certState_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1614
d_certState_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3954
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.govSt
d_govSt_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3952
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.utxoSt
d_utxoSt_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3312
d_utxoSt_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3950
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3942 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2834 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasCast-LedgersEnv
d_HasCast'45'LedgersEnv_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgersEnv_2836 ~v0 ~v1
  = du_HasCast'45'LedgersEnv_2836
du_HasCast'45'LedgersEnv_2836 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgersEnv_2836
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.du_HasCast'45'LedgersEnv_3146
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock
d_EndorserBlock_2884 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock.ebTxRefs
d_ebTxRefs_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.EBWellFormed
d_EBWellFormed_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  ()
d_EBWellFormed_2908 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._⊢_⇀⦇_,EB⦈_
d__'8866'_'8640''10631'_'44'EB'10632'__2912 a0 a1 a2 a3 a4 a5 = ()
newtype T__'8866'_'8640''10631'_'44'EB'10632'__2912
  = C_EB_2920 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
