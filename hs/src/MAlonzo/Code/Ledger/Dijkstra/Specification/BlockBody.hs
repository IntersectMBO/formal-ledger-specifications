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
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.Sig
d_Sig_874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_874 = erased
-- _.Slot
d_Slot_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_878 = erased
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.VKey
d_VKey_964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_964 = erased
-- _.Acnt.reserves
d_reserves_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2682 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1330 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1332
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1336
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1334 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1338
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2748 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2816 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1570
d_certState_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3926
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3924
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_utxoSt_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3922
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  ()
d_BlocksMade_2900 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  AgdaAny
d_totExUnits_3002 v0 ~v1 = du_totExUnits_3002 v0
du_totExUnits_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  AgdaAny
du_totExUnits_3002 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3206
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_3004 a0 a1 = ()
data T_BHBody_3004
  = C_constructor_3026 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3016 :: T_BHBody_3004 -> AgdaAny
d_bvkcold_3016 v0
  = case coe v0 of
      C_constructor_3026 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3018 :: T_BHBody_3004 -> Integer
d_bsize_3018 v0
  = case coe v0 of
      C_constructor_3026 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3020 :: T_BHBody_3004 -> AgdaAny
d_slot_3020 v0
  = case coe v0 of
      C_constructor_3026 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3022 :: T_BHBody_3004 -> AgdaAny
d_bhash_3022 v0
  = case coe v0 of
      C_constructor_3026 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3024 :: T_BHBody_3004 -> Integer
d_hBbsize_3024 v0
  = case coe v0 of
      C_constructor_3026 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3028 a0 a1 = ()
data T_BHeader_3028 = C_constructor_3038 T_BHBody_3004 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3034 :: T_BHeader_3028 -> T_BHBody_3004
d_bhbody_3034 v0
  = case coe v0 of
      C_constructor_3038 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3036 :: T_BHeader_3028 -> AgdaAny
d_bhsig_3036 v0
  = case coe v0 of
      C_constructor_3038 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3040 a0 a1 = ()
data T_Block_3040
  = C_constructor_3066 T_BHeader_3028
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830]
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3054 :: T_Block_3040 -> T_BHeader_3028
d_bheader_3054 v0
  = case coe v0 of
      C_constructor_3066 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3056 ::
  T_Block_3040 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830]
d_ts_3056 v0
  = case coe v0 of
      C_constructor_3066 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3058 :: T_Block_3040 -> Integer
d_bBodySize_3058 v0
  = case coe v0 of
      C_constructor_3066 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3060 :: T_Block_3040 -> AgdaAny
d_bBodyHash_3060 v0
  = case coe v0 of
      C_constructor_3066 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3062 ::
  T_Block_3040 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3062 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3064 ::
  T_Block_3040 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3064 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  ()
d_BBodyEnv_3068 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  ()
d_BBodyState_3070 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3072 v0 ~v1 v2 v3 = du_incrBlocks_3072 v0 v2 v3
du_incrBlocks_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3072 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__3078 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3078
  = C_BBODY'45'Block'45'Body_3104 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
