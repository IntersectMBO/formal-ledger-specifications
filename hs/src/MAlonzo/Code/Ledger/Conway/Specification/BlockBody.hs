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
d__'8805''7497'__24 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__24 = erased
-- _.Acnt
d_Acnt_40 a0 = ()
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_294 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_294
du_HasCast'45'HashProtected'45'MaybeScriptHash_294 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_386 ~v0 = du_HasTreasury'45'Acnt_386
du_HasTreasury'45'Acnt_386 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_386
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- _.THash
d_THash_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_458 = erased
-- _.Sig
d_Sig_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_628 = erased
-- _.Slot
d_Slot_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_630 = erased
-- _.Tx
d_Tx_658 a0 = ()
-- _.VKey
d_VKey_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_694 = erased
-- _.Acnt.reserves
d_reserves_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- _.Tx.body
d_body_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- _.Tx.isValid
d_isValid_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- _.Tx.txAD
d_txAD_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe AgdaAny
d_txAD_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- _.Tx.txsize
d_txsize_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- _.Tx.wits
d_wits_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2102 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2114 ~v0 ~v1
  = du_HasPParams'45'EnactState_2114
du_HasPParams'45'EnactState_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1270
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1238 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1240
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1244
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1242 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1246
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2168 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2174 ~v0 ~v1 = du_HasCast'45'LEnv_2174
du_HasCast'45'LEnv_2174 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3074
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2218 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_certState_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_3022
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_3020
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_3018
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BlocksMade_2266 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  AgdaAny
d_totExUnits_2368 v0 ~v1 = du_totExUnits_2368 v0
du_totExUnits_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  AgdaAny
du_totExUnits_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2516
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2370 a0 a1 = ()
data T_BHBody_2370
  = C_constructor_2392 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2382 :: T_BHBody_2370 -> AgdaAny
d_bvkcold_2382 v0
  = case coe v0 of
      C_constructor_2392 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2384 :: T_BHBody_2370 -> Integer
d_bsize_2384 v0
  = case coe v0 of
      C_constructor_2392 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2386 :: T_BHBody_2370 -> AgdaAny
d_slot_2386 v0
  = case coe v0 of
      C_constructor_2392 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2388 :: T_BHBody_2370 -> AgdaAny
d_bhash_2388 v0
  = case coe v0 of
      C_constructor_2392 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2390 :: T_BHBody_2370 -> Integer
d_hBbsize_2390 v0
  = case coe v0 of
      C_constructor_2392 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2394 a0 a1 = ()
data T_BHeader_2394 = C_constructor_2404 T_BHBody_2370 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2400 :: T_BHeader_2394 -> T_BHBody_2370
d_bhbody_2400 v0
  = case coe v0 of
      C_constructor_2404 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2402 :: T_BHeader_2394 -> AgdaAny
d_bhsig_2402 v0
  = case coe v0 of
      C_constructor_2404 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2406 a0 a1 = ()
data T_Block_2406
  = C_constructor_2432 T_BHeader_2394
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2420 :: T_Block_2406 -> T_BHeader_2394
d_bheader_2420 v0
  = case coe v0 of
      C_constructor_2432 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2422 ::
  T_Block_2406 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726]
d_ts_2422 v0
  = case coe v0 of
      C_constructor_2432 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2424 :: T_Block_2406 -> Integer
d_bBodySize_2424 v0
  = case coe v0 of
      C_constructor_2432 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2426 :: T_Block_2406 -> AgdaAny
d_bBodyHash_2426 v0
  = case coe v0 of
      C_constructor_2432 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2428 ::
  T_Block_2406 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2428 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2430 ::
  T_Block_2406 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2430 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BBodyEnv_2434 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BBodyState_2436 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2438 v0 ~v1 v2 v3 = du_incrBlocks_2438 v0 v2 v3
du_incrBlocks_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2438 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__2444 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2444
  = C_BBODY'45'Block'45'Body_2470 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
