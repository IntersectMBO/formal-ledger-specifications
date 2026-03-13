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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_36 a0 = ()
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_252 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_252
du_HasCast'45'HashProtected'45'MaybeScriptHash_252 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1066
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_338 ~v0 = du_HasTreasury'45'Acnt_338
du_HasTreasury'45'Acnt_338 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_184
-- _.THash
d_THash_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_402 = erased
-- _.Sig
d_Sig_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_568 = erased
-- _.Slot
d_Slot_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_570 = erased
-- _.Tx
d_Tx_598 a0 = ()
-- _.VKey
d_VKey_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_632 = erased
-- _.Acnt.reserves
d_reserves_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_reserves_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_180
      (coe v0)
-- _.Acnt.treasury
d_treasury_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_treasury_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_178
      (coe v0)
-- _.Tx.body
d_body_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350
d_body_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
      (coe v0)
-- _.Tx.isValid
d_isValid_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Bool
d_isValid_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3548
      (coe v0)
-- _.Tx.txAD
d_txAD_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Maybe AgdaAny
d_txAD_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3550
      (coe v0)
-- _.Tx.txsize
d_txsize_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Integer
d_txsize_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3546
      (coe v0)
-- _.Tx.wits
d_wits_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3508
d_wits_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3544
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2000 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'EnactState_2012 ~v0 ~v1
  = du_HasPParams'45'EnactState_2012
du_HasPParams'45'EnactState_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
du_HasPParams'45'EnactState_2012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1194
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1162 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1164
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1168
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1166 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1170
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2066 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2072 ~v0 ~v1 = du_HasCast'45'LEnv_2072
du_HasCast'45'LEnv_2072 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2072
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2966
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2116 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430
d_certState_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2914
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2912
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2910
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BlocksMade_2164 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  AgdaAny
d_totExUnits_2266 v0 ~v1 = du_totExUnits_2266 v0
du_totExUnits_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  AgdaAny
du_totExUnits_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2422
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2268 a0 a1 = ()
data T_BHBody_2268
  = C_constructor_2290 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2280 :: T_BHBody_2268 -> AgdaAny
d_bvkcold_2280 v0
  = case coe v0 of
      C_constructor_2290 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2282 :: T_BHBody_2268 -> Integer
d_bsize_2282 v0
  = case coe v0 of
      C_constructor_2290 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2284 :: T_BHBody_2268 -> AgdaAny
d_slot_2284 v0
  = case coe v0 of
      C_constructor_2290 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2286 :: T_BHBody_2268 -> AgdaAny
d_bhash_2286 v0
  = case coe v0 of
      C_constructor_2290 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2288 :: T_BHBody_2268 -> Integer
d_hBbsize_2288 v0
  = case coe v0 of
      C_constructor_2290 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2292 a0 a1 = ()
data T_BHeader_2292 = C_constructor_2302 T_BHBody_2268 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2298 :: T_BHeader_2292 -> T_BHBody_2268
d_bhbody_2298 v0
  = case coe v0 of
      C_constructor_2302 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2300 :: T_BHeader_2292 -> AgdaAny
d_bhsig_2300 v0
  = case coe v0 of
      C_constructor_2302 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2304 a0 a1 = ()
data T_Block_2304
  = C_constructor_2330 T_BHeader_2292
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2318 :: T_Block_2304 -> T_BHeader_2292
d_bheader_2318 v0
  = case coe v0 of
      C_constructor_2330 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2320 ::
  T_Block_2304 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
d_ts_2320 v0
  = case coe v0 of
      C_constructor_2330 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2322 :: T_Block_2304 -> Integer
d_bBodySize_2322 v0
  = case coe v0 of
      C_constructor_2330 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2324 :: T_Block_2304 -> AgdaAny
d_bBodyHash_2324 v0
  = case coe v0 of
      C_constructor_2330 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2326 ::
  T_Block_2304 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2326 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2328 ::
  T_Block_2304 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2328 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyEnv_2332 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyState_2334 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2336 v0 ~v1 v2 v3 = du_incrBlocks_2336 v0 v2 v3
du_incrBlocks_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2336 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1358
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Conway.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2342 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2342
  = C_BBODY'45'Block'45'Body_2368 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
