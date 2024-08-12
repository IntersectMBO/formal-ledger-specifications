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

module MAlonzo.Code.Ledger.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≤ᵗ_
d__'8804''7511'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__14 = erased
-- _.Addr
d_Addr_34 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_34 = erased
-- _.DCert
d_DCert_68 a0 = ()
-- _.THash
d_THash_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_84 = erased
-- _.Dec-isScript
d_Dec'45'isScript_92 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_92 ~v0 = du_Dec'45'isScript_92
du_Dec'45'isScript_92 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_92
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
-- _.DepositPurpose
d_DepositPurpose_180 a0 = ()
-- _.Deposits
d_Deposits_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_182 = erased
-- _.ExUnits
d_ExUnits_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_192 = erased
-- _.GovProposal
d_GovProposal_216 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_356 = erased
-- _.Slot
d_Slot_368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_368 = erased
-- _.Tx
d_Tx_398 a0 = ()
-- _.TxBody
d_TxBody_400 a0 = ()
-- _.TxOut
d_TxOut_406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_406 = erased
-- _.TxOutʰ
d_TxOut'688'_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_408 = erased
-- _.UTxO
d_UTxO_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_412 = erased
-- _.Value
d_Value_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_430 = erased
-- _.coin
d_coin_462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_462 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
-- _.getValueʰ
d_getValue'688'_506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_506 ~v0 = du_getValue'688'_506
du_getValue'688'_506 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_506
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744
-- _.inject
d_inject_516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_516 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
-- _.netId
d_netId_554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_554 ~v0 = du_netId_554
du_netId_554 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_554 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- _.txOutHash
d_txOutHash_618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_618 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1600 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2208
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1610 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2226 (coe v0)
      (coe v1)
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1684 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1684 v3
du_HasCoin'45'Map_1684 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1684 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Utxo._*↓_
d__'42''8595'__1690 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1690 ~v0 v1 v2 = du__'42''8595'__1690 v1 v2
du__'42''8595'__1690 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1690 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1696 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1696 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
         (coe MAlonzo.Code.Ledger.Address.du_payCred_102 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2830 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_178 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2844 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1708 ~v0 ~v1 v2 = du_getDataHashes_1708 v2
du_getDataHashes_1708 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1708 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Utxo.getInputHashes
d_getInputHashes_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1712 v0 ~v1 v2 v3
  = du_getInputHashes_1712 v0 v2 v3
du_getInputHashes_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1712 v0 v1 v2
  = coe
      du_getDataHashes_1708
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950))
              (coe
                 du_isTwoPhaseScriptAddress_1696 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2650
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
d_totExUnits_1768 v0 ~v1 v2 = du_totExUnits_1768 v0 v2
du_totExUnits_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
du_totExUnits_1768 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_172
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_428
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_428
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> Integer
d_utxoEntrySizeWithoutVal_1780 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1780
du_utxoEntrySizeWithoutVal_1780 :: Integer
du_utxoEntrySizeWithoutVal_1780 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1782 v0 ~v1 v2 = du_utxoEntrySize_1782 v0 v2
du_utxoEntrySize_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1782 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1780)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744 (coe v1)))
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1786 a0 a1 = ()
data T_UTxOEnv_1786
  = C_UTxOEnv'46'constructor_7583 AgdaAny
                                  MAlonzo.Code.Ledger.PParams.T_PParams_228 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1794 :: T_UTxOEnv_1786 -> AgdaAny
d_slot_1794 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7583 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1796 ::
  T_UTxOEnv_1786 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1796 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7583 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_1798 :: T_UTxOEnv_1786 -> Integer
d_treasury_1798 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7583 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1800 a0 a1 = ()
data T_UTxOState_1800
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1810 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1810 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1812 :: T_UTxOState_1800 -> Integer
d_fees_1812 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1814 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1814 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1816 :: T_UTxOState_1800 -> Integer
d_donations_1816 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1820 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__1820
  = C_UTXO'45'inductive_2666 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1830 ~v0 ~v1 v2 = du_outs_1830 v2
du_outs_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1830 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2682 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2654 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1836 v0 ~v1 v2 = du_balance_1836 v0 v2
du_balance_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1836 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_184
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_186
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_172
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_428
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_172
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_428
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1842 v0 ~v1 v2 = du_cbalance_1842 v0 v2
du_cbalance_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1842 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
      (coe du_balance_1836 (coe v0) (coe v1))
-- Ledger.Utxo._._.minfee
d_minfee_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_minfee_1846 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1598 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v2))
               (coe du_totExUnits_1768 (coe v0) (coe v4)))
            (coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v2)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Rational.Base.d_floor_346
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
                     (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'47'__156
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1606 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
                                 (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))
                                 erased erased erased
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_p1s_414
                                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_428
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refScripts_2768 (coe v0) (coe v4)
                                 (coe v3)))))
                     (coe (1 :: Integer)))))))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2680
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v4))))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1856 v0 ~v1 = du_HasCoin'45'UTxO_1856 v0
du_HasCoin'45'UTxO_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1856 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1842 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1858 ~v0 ~v1 v2 v3 = du_certDeposit_1858 v2 v3
du_certDeposit_1858 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1858 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_790 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_770 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_794 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_772 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_798 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_774 (coe v3))
                   (coe v4))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
d_certRefund_1872 ~v0 ~v1 v2 = du_certRefund_1872 v2
du_certRefund_1872 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
du_certRefund_1872 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_792 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_770 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_800 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_774 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1878 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1878 v0 v2 v3 v4
du_updateCertDeposits_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1878 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
                (coe
                   du_updateCertDeposits_1878 (coe v0) (coe v1) (coe v5) (coe v3))
                (coe du_certDeposit_1858 (coe v4) (coe v1)))
             (coe du_certRefund_1872 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1890 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1890 v0 v2 v3 v4 v5
du_updateProposalDeposits_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1890 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
             (coe
                du_updateProposalDeposits_1890 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1902 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1902 v0 v2 v3 v4
du_updateDeposits_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1902 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1878 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2662 (coe v2))
      (coe
         du_updateProposalDeposits_1890 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2668 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2682 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1954 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_1954 v0 v2 v3 v4
du_proposalDepositsΔ_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1954 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_1890 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2682 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Utxo.depositsChange
d_depositsChange_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2008 v0 ~v1 v2 v3 v4
  = du_depositsChange_2008 v0 v2 v3 v4
du_depositsChange_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2008 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1902 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
         (coe
            MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_2018 a0 a1 a2 a3 = ()
data T_inInterval_2018
  = C_both_2026 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2030 AgdaAny | C_upper_2034 AgdaAny | C_none_2036
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2038 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2038 v0 v2 v3
du_Dec'45'inInterval_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2038 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                         -> let v7
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                                  (coe v0)))
                                            v1 v6) in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                      -> if coe v9
                                           then case coe v10 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                    -> case coe v8 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                           -> if coe v12
                                                                then case coe v13 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                         -> coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                              (coe v12)
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                 (coe
                                                                                    C_both_2026
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe v14))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v13)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v12)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_lower_2030 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                               (coe v0)))
                                         v1 v5) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_upper_2034 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_none_2036))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2140 v0 ~v1
  = du_HasCoin'45'UTxOState_2140 v0
du_HasCoin'45'UTxOState_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2140 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_1842 (coe v0) (coe d_utxo_1810 (coe v1)))
                    (coe d_donations_1816 (coe v1)))
                 (coe d_fees_1812 (coe v1)))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
                 (coe
                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                    (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                 (coe (\ v2 -> v2)) (coe d_deposits_1814 (coe v1)))))
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2144 ~v0 ~v1 v2 v3
  = du__'61''62''7495'__2144 v2 v3
du__'61''62''7495'__2144 :: Bool -> Bool -> Bool
du__'61''62''7495'__2144 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2150 ~v0 ~v1 v2 v3 = du__'8804''7495'__2150 v2 v3
du__'8804''7495'__2150 :: Integer -> Integer -> Bool
du__'8804''7495'__2150 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2152 ~v0 ~v1 v2 v3 = du__'8805''7495'__2152 v2 v3
du__'8805''7495'__2152 :: Integer -> Integer -> Bool
du__'8805''7495'__2152 v0 v1
  = coe du__'8804''7495'__2150 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2164 ~v0 ~v1 ~v2 v3 v4
  = du_'8799''45''8709''7495'_2164 v3 v4
du_'8799''45''8709''7495'_2164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2164 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_254 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> [AgdaAny]
d_coinPolicies_2168 v0 ~v1 = du_coinPolicies_2168 v0
du_coinPolicies_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2168 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2170 v0 ~v1 v2 = du_isAdaOnly'7495'_2170 v0 v2
du_isAdaOnly'7495'_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2170 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_toBool_64
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                               (coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                               (coe v3) (coe du_coinPolicies_2168 (coe v0)))))
                    v2))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)) v1))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                               (coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                                  v1))))
                    v2))
            (coe du_coinPolicies_2168 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2174 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2150
         (coe d_minfee_1846 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2656
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v3))))
      (coe
         du__'61''62''7495'__2144
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               du_'8799''45''8709''7495'_2164
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_172
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_428
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_428
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                     (coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v3))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1606
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_138
                          (coe
                             MAlonzo.Code.Ledger.Address.du_payCred_102
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))))
               (coe du_collateralRange_2310 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_2170 (coe v0)
                  (coe du_bal_2312 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__2152
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                           (coe du_bal_2312 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2656
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        du_'8799''45''8709''7495'_2164
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_collateral_2684
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v3)))))))))
-- Ledger.Utxo._.collateralRange
d_collateralRange_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2310 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2310 v0 v3 v4
du_collateralRange_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2310 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2684
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2312 v0 ~v1 ~v2 v3 v4 = du_bal_2312 v0 v3 v4
du_bal_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2312 v0 v1 v2
  = coe
      du_balance_1836 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2684
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_depositRefunds_2326 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2326 v0 v2 v3 v4
du_depositRefunds_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
du_depositRefunds_2326 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2008 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1814 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_newDeposits_2334 v0 ~v1 v2 v3 v4
  = du_newDeposits_2334 v0 v2 v3 v4
du_newDeposits_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
du_newDeposits_2334 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2008 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1814 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
d_consumed_2342 v0 ~v1 v2 v3 v4 = du_consumed_2342 v0 v2 v3 v4
du_consumed_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
du_consumed_2342 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
         (coe
            du_balance_1836 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
               (coe d_utxo_1810 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2650 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2658 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
         (coe du_depositRefunds_2326 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
d_produced_2350 v0 ~v1 v2 v3 v4 = du_produced_2350 v0 v2 v3 v4
du_produced_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> AgdaAny
du_produced_2350 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
            (coe du_balance_1836 (coe v0) (coe du_outs_1830 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2656 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
            (coe du_newDeposits_2334 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2670 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2358 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2358
  = C_Scripts'45'Yes_2438 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2518 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txdonation
d_txdonation_2396 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_txdonation_2396 ~v0 ~v1 ~v2 v3 = du_txdonation_2396 v3
du_txdonation_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
du_txdonation_2396 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2670
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2398 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_txfee_2398 ~v0 ~v1 ~v2 v3 = du_txfee_2398 v3
du_txfee_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
du_txfee_2398 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2656
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2402 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2402 ~v0 ~v1 ~v2 v3 = du_txins_2402 v3
du_txins_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2402 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2650
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2420 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2420 ~v0 v1 ~v2 ~v3 = du_pparams_2420 v1
du_pparams_2420 ::
  T_UTxOEnv_1786 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2420 v0 = coe d_pparams_1796 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2422 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
d_slot_2422 ~v0 v1 ~v2 ~v3 = du_slot_2422 v1
du_slot_2422 :: T_UTxOEnv_1786 -> AgdaAny
du_slot_2422 v0 = coe d_slot_1794 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2424 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_treasury_2424 ~v0 v1 ~v2 ~v3 = du_treasury_2424 v1
du_treasury_2424 :: T_UTxOEnv_1786 -> Integer
du_treasury_2424 v0 = coe d_treasury_1798 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2428 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2428 ~v0 ~v1 v2 ~v3 = du_deposits_2428 v2
du_deposits_2428 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2428 v0 = coe d_deposits_1814 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2430 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_donations_2430 ~v0 ~v1 v2 ~v3 = du_donations_2430 v2
du_donations_2430 :: T_UTxOState_1800 -> Integer
du_donations_2430 v0 = coe d_donations_1816 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2432 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_fees_2432 ~v0 ~v1 v2 ~v3 = du_fees_2432 v2
du_fees_2432 :: T_UTxOState_1800 -> Integer
du_fees_2432 v0 = coe d_fees_1812 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2434 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2434 ~v0 ~v1 v2 ~v3 = du_utxo_2434 v2
du_utxo_2434 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2434 v0 = coe d_utxo_1810 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2458 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2458 ~v0 ~v1 ~v2 v3 = du_collateral_2458 v3
du_collateral_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2458 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2684
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2500 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2500 ~v0 v1 ~v2 ~v3 = du_pparams_2500 v1
du_pparams_2500 ::
  T_UTxOEnv_1786 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2500 v0 = coe d_pparams_1796 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2502 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> AgdaAny
d_slot_2502 ~v0 v1 ~v2 ~v3 = du_slot_2502 v1
du_slot_2502 :: T_UTxOEnv_1786 -> AgdaAny
du_slot_2502 v0 = coe d_slot_1794 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2504 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_treasury_2504 ~v0 v1 ~v2 ~v3 = du_treasury_2504 v1
du_treasury_2504 :: T_UTxOEnv_1786 -> Integer
du_treasury_2504 v0 = coe d_treasury_1798 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2508 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2508 ~v0 ~v1 v2 ~v3 = du_deposits_2508 v2
du_deposits_2508 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2508 v0 = coe d_deposits_1814 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2510 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_donations_2510 ~v0 ~v1 v2 ~v3 = du_donations_2510 v2
du_donations_2510 :: T_UTxOState_1800 -> Integer
du_donations_2510 v0 = coe d_donations_1816 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2512 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Integer
d_fees_2512 ~v0 ~v1 v2 ~v3 = du_fees_2512 v2
du_fees_2512 :: T_UTxOState_1800 -> Integer
du_fees_2512 v0 = coe d_fees_1812 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2514 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2514 ~v0 ~v1 v2 ~v3 = du_utxo_2514 v2
du_utxo_2514 ::
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2514 v0 = coe d_utxo_1810 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2520 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2226 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2208
                  (coe v0) (coe v1) (coe d_pparams_1796 (coe v2)) (coe v4)
                  (coe d_utxo_1810 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2724 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2724 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2522 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2226 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2208
                  (coe v0) (coe v1) (coe d_pparams_1796 (coe v2)) (coe v4)
                  (coe d_utxo_1810 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2724 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2724 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._≡?_
d__'8801''63'__2534 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2534
  = C_'8801''63''45'nothing_2540 | C_'8801''63''45'just_2544
-- Ledger.Utxo.≟?
d_'8799''63'_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2552 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2552 v3 v4 v5
du_'8799''63'_2552 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2552 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> let v4
                 = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe C_'8801''63''45'just_2544))))
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_'8801''63''45'nothing_2540)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.body
d_body_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608
d_body_2580 ~v0 ~v1 v2 = du_body_2580 v2
du_body_2580 ::
  T_GeneralizeTel_64337 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608
du_body_2580 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2720
      (coe d_'46'generalizedField'45'tx_64329 v0)
-- Ledger.Utxo._.curTreasury
d_curTreasury_2588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Maybe Integer
d_curTreasury_2588 ~v0 ~v1 v2 = du_curTreasury_2588 v2
du_curTreasury_2588 :: T_GeneralizeTel_64337 -> Maybe Integer
du_curTreasury_2588 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2678
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.mint
d_mint_2590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> AgdaAny
d_mint_2590 ~v0 ~v1 v2 = du_mint_2590 v2
du_mint_2590 :: T_GeneralizeTel_64337 -> AgdaAny
du_mint_2590 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.refInputs
d_refInputs_2592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2592 ~v0 ~v1 v2 = du_refInputs_2592 v2
du_refInputs_2592 ::
  T_GeneralizeTel_64337 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2592 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2652
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_2600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Maybe AgdaAny
d_txNetworkId_2600 ~v0 ~v1 v2 = du_txNetworkId_2600 v2
du_txNetworkId_2600 :: T_GeneralizeTel_64337 -> Maybe AgdaAny
du_txNetworkId_2600 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2676
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txins
d_txins_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2610 ~v0 ~v1 v2 = du_txins_2610 v2
du_txins_2610 ::
  T_GeneralizeTel_64337 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2610 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2650
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txouts
d_txouts_2612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2612 ~v0 ~v1 v2 = du_txouts_2612 v2
du_txouts_2612 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2612 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2654
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txsize
d_txsize_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Integer
d_txsize_2616 ~v0 ~v1 v2 = du_txsize_2616 v2
du_txsize_2616 :: T_GeneralizeTel_64337 -> Integer
du_txsize_2616 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2680
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2620 ~v0 ~v1 v2 = du_txvldt_2620 v2
du_txvldt_2620 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2620 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2624 ~v0 ~v1 v2 = du_txwdrls_2624 v2
du_txwdrls_2624 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2624 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2720
         (coe d_'46'generalizedField'45'tx_64329 v0))
-- Ledger.Utxo._.pparams
d_pparams_2628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2628 ~v0 ~v1 v2 = du_pparams_2628 v2
du_pparams_2628 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2628 v0
  = coe d_pparams_1796 (coe d_'46'generalizedField'45'Γ_64331 v0)
-- Ledger.Utxo._.slot
d_slot_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> AgdaAny
d_slot_2630 ~v0 ~v1 v2 = du_slot_2630 v2
du_slot_2630 :: T_GeneralizeTel_64337 -> AgdaAny
du_slot_2630 v0
  = coe d_slot_1794 (coe d_'46'generalizedField'45'Γ_64331 v0)
-- Ledger.Utxo._.treasury
d_treasury_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Integer
d_treasury_2632 ~v0 ~v1 v2 = du_treasury_2632 v2
du_treasury_2632 :: T_GeneralizeTel_64337 -> Integer
du_treasury_2632 v0
  = coe d_treasury_1798 (coe d_'46'generalizedField'45'Γ_64331 v0)
-- Ledger.Utxo._.deposits
d_deposits_2636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2636 ~v0 ~v1 v2 = du_deposits_2636 v2
du_deposits_2636 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2636 v0
  = coe d_deposits_1814 (coe d_'46'generalizedField'45's_64333 v0)
-- Ledger.Utxo._.donations
d_donations_2638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Integer
d_donations_2638 ~v0 ~v1 v2 = du_donations_2638 v2
du_donations_2638 :: T_GeneralizeTel_64337 -> Integer
du_donations_2638 v0
  = coe d_donations_1816 (coe d_'46'generalizedField'45's_64333 v0)
-- Ledger.Utxo._.fees
d_fees_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> Integer
d_fees_2640 ~v0 ~v1 v2 = du_fees_2640 v2
du_fees_2640 :: T_GeneralizeTel_64337 -> Integer
du_fees_2640 v0
  = coe d_fees_1812 (coe d_'46'generalizedField'45's_64333 v0)
-- Ledger.Utxo._.utxo
d_utxo_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2642 ~v0 ~v1 v2 = du_utxo_2642 v2
du_utxo_2642 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2642 v0
  = coe d_utxo_1810 (coe d_'46'generalizedField'45's_64333 v0)
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  T_UTxOEnv_1786 ->
  T_UTxOState_1800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2708 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
               (coe
                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_254
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2650
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_424
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1568
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                     (coe
                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
                                           (coe v0))))
                                  (coe v6)
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_538
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                     (coe d_utxo_1810 (coe v4))))))
                       v5))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2650
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2652
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_254
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__686
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2650
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2652
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2038 (coe v0) (coe d_slot_1794 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2660
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
                        (coe
                           d_feesOK_2174 (coe v0) (coe v1) (coe d_pparams_1796 (coe v3))
                           (coe v2) (coe d_utxo_1810 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))))
                           (coe
                              du_consumed_2342 (coe v0) (coe d_pparams_1796 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
                           (coe
                              du_produced_2350 (coe v0) (coe d_pparams_1796 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2658
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txsize_2680
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.PParams.d_maxTxSize_290
                                       (coe d_pparams_1796 (coe v3)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased erased
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
                                                             (coe v0))
                                                          (mulInt
                                                             (coe
                                                                du_utxoEntrySize_1782 (coe v0)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v6)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318
                                                                (coe d_pparams_1796 (coe v3)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v6))))))
                                            v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2654
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                  (coe
                                                     (\ v6 ->
                                                        coe
                                                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                                             (coe
                                                                MAlonzo.Code.Ledger.Abstract.d_serSize_1600
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v6))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_maxValSize_298
                                                                (coe d_pparams_1796 (coe v3)))))))
                                               v5))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2654
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                             (coe
                                                                (\ v7 ->
                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                             (coe
                                                                (\ v7 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.d_attrsSize_68
                                                                           (coe v7))
                                                                        (coe (64 :: Integer)))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v6)))))
                                                  v5))
                                          (coe
                                             MAlonzo.Code.Interface.IsSet.du_range_540
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2654
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.du_netId_106
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v6)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_2220
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_range_540
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2654
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                           (coe
                                                              (\ v6 ->
                                                                 coe
                                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.d_net_76
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_networkId_2220
                                                                      (coe v0)))))
                                                        v5))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_dom_538
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   du_'8799''63'_2552
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2676
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_networkId_2220
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144
                                                         (coe v0))))
                                                (coe
                                                   du_'8799''63'_2552
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2678
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                         (coe v2)))
                                                   (coe d_treasury_1798 (coe v3))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_64329 ::
  T_GeneralizeTel_64337 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2710
d_'46'generalizedField'45'tx_64329
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_64331 ::
  T_GeneralizeTel_64337 -> T_UTxOEnv_1786
d_'46'generalizedField'45'Γ_64331 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_64333 ::
  T_GeneralizeTel_64337 -> T_UTxOState_1800
d_'46'generalizedField'45's_64333 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_64335 ::
  T_GeneralizeTel_64337 -> T_UTxOState_1800
d_'46'generalizedField'45's''_64335
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_64337 a0 a1 = ()
data T_GeneralizeTel_64337
  = C_mkGeneralizeTel_64339 MAlonzo.Code.Ledger.Transaction.T_Tx_2710
                            T_UTxOEnv_1786 T_UTxOState_1800 T_UTxOState_1800
