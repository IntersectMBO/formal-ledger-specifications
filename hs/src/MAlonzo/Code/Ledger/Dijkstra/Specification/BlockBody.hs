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
d__'8805''7497'__24 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__24 = erased
-- _.Acnt
d_Acnt_44 a0 = ()
-- _.THash
d_THash_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_698 = erased
-- _.Sig
d_Sig_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_902 = erased
-- _.Slot
d_Slot_906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_906 = erased
-- _.TopLevelTx
d_TopLevelTx_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_938 = erased
-- _.VKey
d_VKey_992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_992 = erased
-- _.Acnt.reserves
d_reserves_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2674 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1296 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1298
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1302
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1300 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1304
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3814 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2740 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2808 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466
d_certState_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3866
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3864
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3854 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3224
d_utxoSt_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3862
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  ()
d_BlocksMade_2890 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  AgdaAny
d_totExUnits_2992 v0 ~v1 = du_totExUnits_2992 v0
du_totExUnits_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  AgdaAny
du_totExUnits_2992 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3150
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_2994 a0 a1 = ()
data T_BHBody_2994
  = C_constructor_3016 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3006 :: T_BHBody_2994 -> AgdaAny
d_bvkcold_3006 v0
  = case coe v0 of
      C_constructor_3016 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3008 :: T_BHBody_2994 -> Integer
d_bsize_3008 v0
  = case coe v0 of
      C_constructor_3016 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3010 :: T_BHBody_2994 -> AgdaAny
d_slot_3010 v0
  = case coe v0 of
      C_constructor_3016 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3012 :: T_BHBody_2994 -> AgdaAny
d_bhash_3012 v0
  = case coe v0 of
      C_constructor_3016 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3014 :: T_BHBody_2994 -> Integer
d_hBbsize_3014 v0
  = case coe v0 of
      C_constructor_3016 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3018 a0 a1 = ()
data T_BHeader_3018 = C_constructor_3028 T_BHBody_2994 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3024 :: T_BHeader_3018 -> T_BHBody_2994
d_bhbody_3024 v0
  = case coe v0 of
      C_constructor_3028 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3026 :: T_BHeader_3018 -> AgdaAny
d_bhsig_3026 v0
  = case coe v0 of
      C_constructor_3028 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3030 a0 a1 = ()
data T_Block_3030
  = C_constructor_3056 T_BHeader_3018
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798]
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3044 :: T_Block_3030 -> T_BHeader_3018
d_bheader_3044 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3046 ::
  T_Block_3030 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798]
d_ts_3046 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3048 :: T_Block_3030 -> Integer
d_bBodySize_3048 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3050 :: T_Block_3030 -> AgdaAny
d_bBodyHash_3050 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3052 ::
  T_Block_3030 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3052 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3054 ::
  T_Block_3030 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3054 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  ()
d_BBodyEnv_3058 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  ()
d_BBodyState_3060 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3062 v0 ~v1 v2 v3 = du_incrBlocks_3062 v0 v2 v3
du_incrBlocks_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3062 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__3068 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3068
  = C_BBODY'45'Block'45'Body_3094 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
