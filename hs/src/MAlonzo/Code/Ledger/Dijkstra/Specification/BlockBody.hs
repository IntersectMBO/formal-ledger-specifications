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

module MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_40 a0 = ()
-- _.THash
d_THash_658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_658 = erased
-- _.Sig
d_Sig_860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_860 = erased
-- _.Slot
d_Slot_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_864 = erased
-- _.TopLevelTx
d_TopLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_896 = erased
-- _.VKey
d_VKey_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_948 = erased
-- _.Acnt.reserves
d_reserves_1240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2612 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1240 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1242
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1246
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1244 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2678 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2748 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_certState_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3708
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3706
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3696 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3124
d_utxoSt_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3704
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_BlocksMade_2830 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_totExUnits_2932 v0 ~v1 = du_totExUnits_2932 v0
du_totExUnits_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
du_totExUnits_2932 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3046
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_2934 a0 a1 = ()
data T_BHBody_2934
  = C_constructor_2956 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2946 :: T_BHBody_2934 -> AgdaAny
d_bvkcold_2946 v0
  = case coe v0 of
      C_constructor_2956 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_2948 :: T_BHBody_2934 -> Integer
d_bsize_2948 v0
  = case coe v0 of
      C_constructor_2956 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_2950 :: T_BHBody_2934 -> AgdaAny
d_slot_2950 v0
  = case coe v0 of
      C_constructor_2956 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_2952 :: T_BHBody_2934 -> AgdaAny
d_bhash_2952 v0
  = case coe v0 of
      C_constructor_2956 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2954 :: T_BHBody_2934 -> Integer
d_hBbsize_2954 v0
  = case coe v0 of
      C_constructor_2956 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_2958 a0 a1 = ()
data T_BHeader_2958 = C_constructor_2968 T_BHBody_2934 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_2964 :: T_BHeader_2958 -> T_BHBody_2934
d_bhbody_2964 v0
  = case coe v0 of
      C_constructor_2968 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_2966 :: T_BHeader_2958 -> AgdaAny
d_bhsig_2966 v0
  = case coe v0 of
      C_constructor_2968 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_2970 a0 a1 = ()
data T_Block_2970
  = C_constructor_2996 T_BHeader_2958
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640]
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_2984 :: T_Block_2970 -> T_BHeader_2958
d_bheader_2984 v0
  = case coe v0 of
      C_constructor_2996 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_2986 ::
  T_Block_2970 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640]
d_ts_2986 v0
  = case coe v0 of
      C_constructor_2996 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_2988 :: T_Block_2970 -> Integer
d_bBodySize_2988 v0
  = case coe v0 of
      C_constructor_2996 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2990 :: T_Block_2970 -> AgdaAny
d_bBodyHash_2990 v0
  = case coe v0 of
      C_constructor_2996 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2992 ::
  T_Block_2970 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2992 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2994 ::
  T_Block_2970 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2994 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_BBodyEnv_2998 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_BBodyState_3000 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3002 v0 ~v1 v2 v3 = du_incrBlocks_3002 v0 v2 v3
du_incrBlocks_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3002 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Dijkstra.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__3008 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3008
  = C_BBODY'45'Block'45'Body_3034 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
