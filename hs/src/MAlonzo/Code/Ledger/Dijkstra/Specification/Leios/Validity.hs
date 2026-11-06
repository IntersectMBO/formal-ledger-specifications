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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
d_HasSize'45'Tx_540 ~v0 = du_HasSize'45'Tx_540
du_HasSize'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
du_HasSize'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4604
-- _.TopLevelTx
d_TopLevelTx_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_924 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'LedgerEnv_2726 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2726
du_HasPParams'45'LedgerEnv_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'LedgerEnv_2726
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3946
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv
d_LedgerEnv_2748 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState
d_LedgerState_2752 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.enactState
d_enactState_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.pparams
d_pparams_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.ppolicy
d_ppolicy_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  Maybe AgdaAny
d_ppolicy_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.slot
d_slot_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  AgdaAny
d_slot_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3930
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.treasury
d_treasury_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  Integer
d_treasury_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3938
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.certState
d_certState_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_certState_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.govSt
d_govSt_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.utxoSt
d_utxoSt_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328
d_utxoSt_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2850 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasCast-LedgersEnv
d_HasCast'45'LedgersEnv_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgersEnv_2852 ~v0 ~v1
  = du_HasCast'45'LedgersEnv_2852
du_HasCast'45'LedgersEnv_2852 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgersEnv_2852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.du_HasCast'45'LedgersEnv_3162
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock
d_EndorserBlock_2900 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock.ebTxRefs
d_ebTxRefs_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.EBWellFormed
d_EBWellFormed_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  ()
d_EBWellFormed_2924 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._⊢_⇀⦇_,EB⦈_
d__'8866'_'8640''10631'_'44'EB'10632'__2928 a0 a1 a2 a3 a4 a5 = ()
newtype T__'8866'_'8640''10631'_'44'EB'10632'__2928
  = C_EB_2936 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
