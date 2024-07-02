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
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
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
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _._≤ᵗ_
d__'8804''7511'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__14 = erased
-- _.Addr
d_Addr_34 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_34 = erased
-- _.Credential
d_Credential_64 a0 = ()
-- _.DCert
d_DCert_66 a0 = ()
-- _.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_78 = erased
-- _.Dec-isScript
d_Dec'45'isScript_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_86 ~v0 = du_Dec'45'isScript_86
du_Dec'45'isScript_86 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_86
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_140
-- _.ExUnits
d_ExUnits_178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_178 = erased
-- _.GovActionID
d_GovActionID_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_190 = erased
-- _.GovProposal
d_GovProposal_198 a0 = ()
-- _.THash
d_THash_228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_228 = erased
-- _.MemoryEstimate
d_MemoryEstimate_238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_238 = erased
-- _.PParams
d_PParams_274 a0 = ()
-- _.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- _.Slot
d_Slot_342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_342 = erased
-- _.Tx
d_Tx_372 a0 = ()
-- _.TxBody
d_TxBody_374 a0 = ()
-- _.TxOut
d_TxOut_380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_380 = erased
-- _.TxOutʰ
d_TxOut'688'_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_382 = erased
-- _.UTxO
d_UTxO_386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_386 = erased
-- _.Value
d_Value_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_402 = erased
-- _.coin
d_coin_434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_434 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
-- _.getValueʰ
d_getValue'688'_478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_478 ~v0 = du_getValue'688'_478
du_getValue'688'_478 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_478
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2620
-- _.inject
d_inject_488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_488 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
-- _.netId
d_netId_522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_522 ~v0 = du_netId_522
du_netId_522 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_522 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- _.txOutHash
d_txOutHash_586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_586 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1514 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2118
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1524 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2136 (coe v0)
      (coe v1)
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1598 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1598 v3
du_HasCoin'45'Map_1598 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1598 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Utxo._*↓_
d__'42''8595'__1604 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1604 ~v0 v1 v2 = du__'42''8595'__1604 v1 v2
du__'42''8595'__1604 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1604 v0 v1
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
d_isTwoPhaseScriptAddress_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1610 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1610 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1610 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_140
         (coe MAlonzo.Code.Ledger.Address.du_payCred_102 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2706 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_166 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2720 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1622 ~v0 ~v1 v2 = du_getDataHashes_1622 v2
du_getDataHashes_1622 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1622 v0
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
d_getInputHashes_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1626 v0 ~v1 v2 v3
  = du_getInputHashes_1626 v0 v2 v3
du_getInputHashes_1626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1626 v0 v1 v2
  = coe
      du_getDataHashes_1622
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1120
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950))
              (coe
                 du_isTwoPhaseScriptAddress_1610 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_528
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2526
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> AgdaAny
d_totExUnits_1682 v0 ~v1 v2 = du_totExUnits_1682 v0 v2
du_totExUnits_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> AgdaAny
du_totExUnits_1682 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_164
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_412
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2582
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2598 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> Integer
d_utxoEntrySizeWithoutVal_1694 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1694
du_utxoEntrySizeWithoutVal_1694 :: Integer
du_utxoEntrySizeWithoutVal_1694 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1696 v0 ~v1 v2 = du_utxoEntrySize_1696 v0 v2
du_utxoEntrySize_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1696 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1694)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2620 (coe v1)))
-- Ledger.Utxo.DepositPurpose
d_DepositPurpose_1700 a0 a1 = ()
data T_DepositPurpose_1700
  = C_CredentialDeposit_1702 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_1704 AgdaAny |
    C_DRepDeposit_1706 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_1708 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.Deposits
d_Deposits_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> ()
d_Deposits_1710 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1712 a0 a1 = ()
data T_UTxOEnv_1712
  = C_UTxOEnv'46'constructor_7669 AgdaAny
                                  MAlonzo.Code.Ledger.PParams.T_PParams_218 Integer
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1720 :: T_UTxOEnv_1712 -> AgdaAny
d_slot_1720 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7669 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1722 ::
  T_UTxOEnv_1712 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1722 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7669 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.treasury
d_treasury_1724 :: T_UTxOEnv_1712 -> Integer
d_treasury_1724 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_7669 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1726 a0 a1 = ()
data T_UTxOState_1726
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1744 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1736 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1744 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1738 :: T_UTxOState_1726 -> Integer
d_fees_1738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1744 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1740 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1744 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1742 :: T_UTxOState_1726 -> Integer
d_donations_1742 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1744 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1746 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__1746
  = C_UTXO'45'inductive_2594 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.outs
d_outs_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1756 ~v0 ~v1 v2 = du_outs_1756 v2
du_outs_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1756 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2558 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2530 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1762 v0 ~v1 v2 = du_balance_1762 v0 v2
du_balance_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1762 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))))
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
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
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2620)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1768 v0 ~v1 v2 = du_cbalance_1768 v0 v2
du_cbalance_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1768 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
      (coe du_balance_1762 (coe v0) (coe v1))
-- Ledger.Utxo._._.minfee
d_minfee_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_minfee_1772 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1512 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v2))
               (coe du_totExUnits_1682 (coe v0) (coe v4)))
            (coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v2)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Rational.Base.d_floor_346
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_304
                     (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'47'__156
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
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
                           (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1520 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
                                 (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638 (coe v0))
                                 erased erased erased
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_p1s_398
                                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_412
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refScripts_2644 (coe v0) (coe v4)
                                 (coe v3)))))
                     (coe (1 :: Integer)))))))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_294 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2556
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v4))))
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1782 v0 ~v1
  = du_DecEq'45'DepositPurpose_1782 v0
du_DecEq'45'DepositPurpose_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1782 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1702 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1702 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1704 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1706 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1708 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1704 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1702 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1704 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1706 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1708 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1706 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1702 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1704 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1706 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1708 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1708 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1702 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1704 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1706 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1708 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1784 v0 ~v1 = du_HasCoin'45'UTxO_1784 v0
du_HasCoin'45'UTxO_1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1784 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1768 (coe v0))
-- Ledger.Utxo.certDeposit
d_certDeposit_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_754 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1786 ~v0 ~v1 v2 v3 = du_certDeposit_1786 v2 v3
du_certDeposit_1786 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_754 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1786 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_756 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_CredentialDeposit_1702 (coe v3)) (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_760 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_PoolDeposit_1704 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_764 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_DRepDeposit_1706 (coe v3)) (coe v4))
         _ -> coe v2)
-- Ledger.Utxo.certRefund
d_certRefund_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_754 -> [T_DepositPurpose_1700]
d_certRefund_1800 ~v0 ~v1 v2 = du_certRefund_1800 v2
du_certRefund_1800 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_754 -> [T_DepositPurpose_1700]
du_certRefund_1800 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_758 v2
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe C_CredentialDeposit_1702 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_766 v2
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe C_DRepDeposit_1706 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1806 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1806 v0 v2 v3 v4
du_updateCertDeposits_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1806 v0 v1 v2 v3
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
                (coe du_DecEq'45'DepositPurpose_1782 (coe v0)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe du_DecEq'45'DepositPurpose_1782 (coe v0))
                (coe
                   du_updateCertDeposits_1806 (coe v0) (coe v1) (coe v5) (coe v3))
                (coe du_certDeposit_1786 (coe v4) (coe v1)))
             (coe du_certRefund_1800 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1818 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1818 v0 v2 v3 v4 v5
du_updateProposalDeposits_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1818 v0 v1 v2 v3 v4
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
             (coe du_DecEq'45'DepositPurpose_1782 (coe v0))
             (coe
                du_updateProposalDeposits_1818 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      C_GovActionDeposit_1708
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1830 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1830 v0 v2 v3 v4
du_updateDeposits_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1830 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1806 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2538 (coe v2))
      (coe
         du_updateProposalDeposits_1818 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2544 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2558 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v1))
         (coe v3))
-- Ledger.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_1882 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_1882 v0 v2 v3 v4
du_proposalDepositsΔ_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_1882 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_1818 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txid_2558 (coe v3))
      (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Utxo.depositsChange
d_depositsChange_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1936 v0 ~v1 v2 v3 v4
  = du_depositsChange_1936 v0 v2 v3 v4
du_depositsChange_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1936 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
         (coe du_DecEq'45'DepositPurpose_1782 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1830 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
         (coe du_DecEq'45'DepositPurpose_1782 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_1946 a0 a1 a2 a3 = ()
data T_inInterval_1946
  = C_both_1954 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1958 AgdaAny | C_upper_1962 AgdaAny | C_none_1964
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1966 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1966 v0 v2 v3
du_Dec'45'inInterval_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1966 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390
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
                                                                                    C_both_1954
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390
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
                                                         (coe C_lower_1958 v9))
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390
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
                                                         (coe C_upper_1962 v9))
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
                                 (coe C_none_1964))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2068 v0 ~v1
  = du_HasCoin'45'UTxOState_2068 v0
du_HasCoin'45'UTxOState_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2068 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_1768 (coe v0) (coe d_utxo_1736 (coe v1)))
                    (coe d_donations_1742 (coe v1)))
                 (coe d_fees_1738 (coe v1)))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1150
                 (coe du_DecEq'45'DepositPurpose_1782 (coe v0))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                 (coe (\ v2 -> v2)) (coe d_deposits_1740 (coe v1)))))
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2072 ~v0 ~v1 v2 v3
  = du__'61''62''7495'__2072 v2 v3
du__'61''62''7495'__2072 :: Bool -> Bool -> Bool
du__'61''62''7495'__2072 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2078 ~v0 ~v1 v2 v3 = du__'8804''7495'__2078 v2 v3
du__'8804''7495'__2078 :: Integer -> Integer -> Bool
du__'8804''7495'__2078 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2080 ~v0 ~v1 v2 v3 = du__'8805''7495'__2080 v2 v3
du__'8805''7495'__2080 :: Integer -> Integer -> Bool
du__'8805''7495'__2080 v0 v1
  = coe du__'8804''7495'__2078 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2092 ~v0 ~v1 ~v2 v3 v4
  = du_'8799''45''8709''7495'_2092 v3 v4
du_'8799''45''8709''7495'_2092 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2092 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> [AgdaAny]
d_coinPolicies_2096 v0 ~v1 = du_coinPolicies_2096 v0
du_coinPolicies_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2096 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2098 v0 ~v1 v2 = du_isAdaOnly'7495'_2098 v0 v2
du_isAdaOnly'7495'_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2098 v0 v1
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
                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
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
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                               (coe v3) (coe du_coinPolicies_2096 (coe v0)))))
                    v2))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)) v1))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
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
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
                                  v1))))
                    v2))
            (coe du_coinPolicies_2096 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2102 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2078
         (coe d_minfee_1772 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2532
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v3))))
      (coe
         du__'61''62''7495'__2072
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               du_'8799''45''8709''7495'_2092
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_412
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2582
                     (coe MAlonzo.Code.Ledger.Transaction.d_wits_2598 (coe v3))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1618
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
                        (coe
                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
                        (coe
                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
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
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                             (coe v0))))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                             (coe v0))))))))
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))))))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_126
                          (coe
                             MAlonzo.Code.Ledger.Address.du_payCred_102
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))))
               (coe du_collateralRange_2238 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_2098 (coe v0)
                  (coe du_bal_2240 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__2080
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
                           (coe du_bal_2240 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2532
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        du_'8799''45''8709''7495'_2092
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_collateral_2560
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v3)))))))))
-- Ledger.Utxo._.collateralRange
d_collateralRange_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2238 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2238 v0 v3 v4
du_collateralRange_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2238 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_528
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2560
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2240 v0 ~v1 ~v2 v3 v4 = du_bal_2240 v0 v3 v4
du_bal_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2240 v0 v1 v2
  = coe
      du_balance_1762 (coe v0)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2560
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v1))))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> Integer
d_depositRefunds_2254 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2254 v0 v2 v3 v4
du_depositRefunds_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> Integer
du_depositRefunds_2254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1936 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1740 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> Integer
d_newDeposits_2262 v0 ~v1 v2 v3 v4
  = du_newDeposits_2262 v0 v2 v3 v4
du_newDeposits_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> Integer
du_newDeposits_2262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1936 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1740 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> AgdaAny
d_consumed_2270 v0 ~v1 v2 v3 v4 = du_consumed_2270 v0 v2 v3 v4
du_consumed_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> AgdaAny
du_consumed_2270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
         (coe
            du_balance_1762 (coe v0)
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0))))
               (coe d_utxo_1736 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2526 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2534 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
         (coe du_depositRefunds_2254 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> AgdaAny
d_produced_2278 v0 ~v1 v2 v3 v4 = du_produced_2278 v0 v2 v3 v4
du_produced_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484 -> AgdaAny
du_produced_2278 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0)))
            (coe du_balance_1762 (coe v0) (coe du_outs_1756 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2532 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
            (coe du_newDeposits_2262 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2546 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2286 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2286
  = C_Scripts'45'Yes_2366 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2446 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txdonation
d_txdonation_2324 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_txdonation_2324 ~v0 ~v1 ~v2 v3 = du_txdonation_2324 v3
du_txdonation_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
du_txdonation_2324 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2546
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2326 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_txfee_2326 ~v0 ~v1 ~v2 v3 = du_txfee_2326 v3
du_txfee_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
du_txfee_2326 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2532
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2330 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2330 ~v0 ~v1 ~v2 v3 = du_txins_2330 v3
du_txins_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2330 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2526
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2348 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2348 ~v0 v1 ~v2 ~v3 = du_pparams_2348 v1
du_pparams_2348 ::
  T_UTxOEnv_1712 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2348 v0 = coe d_pparams_1722 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2350 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> AgdaAny
d_slot_2350 ~v0 v1 ~v2 ~v3 = du_slot_2350 v1
du_slot_2350 :: T_UTxOEnv_1712 -> AgdaAny
du_slot_2350 v0 = coe d_slot_1720 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2352 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_treasury_2352 ~v0 v1 ~v2 ~v3 = du_treasury_2352 v1
du_treasury_2352 :: T_UTxOEnv_1712 -> Integer
du_treasury_2352 v0 = coe d_treasury_1724 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2356 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2356 ~v0 ~v1 v2 ~v3 = du_deposits_2356 v2
du_deposits_2356 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2356 v0 = coe d_deposits_1740 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2358 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_donations_2358 ~v0 ~v1 v2 ~v3 = du_donations_2358 v2
du_donations_2358 :: T_UTxOState_1726 -> Integer
du_donations_2358 v0 = coe d_donations_1742 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2360 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_fees_2360 ~v0 ~v1 v2 ~v3 = du_fees_2360 v2
du_fees_2360 :: T_UTxOState_1726 -> Integer
du_fees_2360 v0 = coe d_fees_1738 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2362 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2362 ~v0 ~v1 v2 ~v3 = du_utxo_2362 v2
du_utxo_2362 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2362 v0 = coe d_utxo_1736 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2386 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2386 ~v0 ~v1 ~v2 v3 = du_collateral_2386 v3
du_collateral_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2386 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2560
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2428 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2428 ~v0 v1 ~v2 ~v3 = du_pparams_2428 v1
du_pparams_2428 ::
  T_UTxOEnv_1712 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2428 v0 = coe d_pparams_1722 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2430 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> AgdaAny
d_slot_2430 ~v0 v1 ~v2 ~v3 = du_slot_2430 v1
du_slot_2430 :: T_UTxOEnv_1712 -> AgdaAny
du_slot_2430 v0 = coe d_slot_1720 (coe v0)
-- Ledger.Utxo._.treasury
d_treasury_2432 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_treasury_2432 ~v0 v1 ~v2 ~v3 = du_treasury_2432 v1
du_treasury_2432 :: T_UTxOEnv_1712 -> Integer
du_treasury_2432 v0 = coe d_treasury_1724 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2436 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2436 ~v0 ~v1 v2 ~v3 = du_deposits_2436 v2
du_deposits_2436 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2436 v0 = coe d_deposits_1740 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2438 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_donations_2438 ~v0 ~v1 v2 ~v3 = du_donations_2438 v2
du_donations_2438 :: T_UTxOState_1726 -> Integer
du_donations_2438 v0 = coe d_donations_1742 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2440 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 -> Integer
d_fees_2440 ~v0 ~v1 v2 ~v3 = du_fees_2440 v2
du_fees_2440 :: T_UTxOState_1726 -> Integer
du_fees_2440 v0 = coe d_fees_1738 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2442 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2442 ~v0 ~v1 v2 ~v3 = du_utxo_2442 v2
du_utxo_2442 ::
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2442 v0 = coe d_utxo_1736 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2448 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2136 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2118
                  (coe v0) (coe v1) (coe d_pparams_1722 (coe v2)) (coe v4)
                  (coe d_utxo_1736 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2600 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2600 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2450 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2136 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2118
                  (coe v0) (coe v1) (coe d_pparams_1722 (coe v2)) (coe v4)
                  (coe d_utxo_1736 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2600 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2600 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._≡?_
d__'8801''63'__2462 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2462
  = C_'8801''63''45'nothing_2468 | C_'8801''63''45'just_2472
-- Ledger.Utxo.≟?
d_'8799''63'_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2480 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2480 v3 v4 v5
du_'8799''63'_2480 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2480 v0 v1 v2
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
                                       (coe C_'8801''63''45'just_2472))))
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
                   (coe C_'8801''63''45'nothing_2468)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.body
d_body_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484
d_body_2508 ~v0 ~v1 v2 = du_body_2508 v2
du_body_2508 ::
  T_GeneralizeTel_78921 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2484
du_body_2508 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2596
      (coe d_'46'generalizedField'45'tx_78913 v0)
-- Ledger.Utxo._.curTreasury
d_curTreasury_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Maybe Integer
d_curTreasury_2516 ~v0 ~v1 v2 = du_curTreasury_2516 v2
du_curTreasury_2516 :: T_GeneralizeTel_78921 -> Maybe Integer
du_curTreasury_2516 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2554
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.mint
d_mint_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> AgdaAny
d_mint_2518 ~v0 ~v1 v2 = du_mint_2518 v2
du_mint_2518 :: T_GeneralizeTel_78921 -> AgdaAny
du_mint_2518 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2534
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.refInputs
d_refInputs_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2520 ~v0 ~v1 v2 = du_refInputs_2520 v2
du_refInputs_2520 ::
  T_GeneralizeTel_78921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2520 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2528
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txNetworkId
d_txNetworkId_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Maybe AgdaAny
d_txNetworkId_2528 ~v0 ~v1 v2 = du_txNetworkId_2528 v2
du_txNetworkId_2528 :: T_GeneralizeTel_78921 -> Maybe AgdaAny
du_txNetworkId_2528 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2552
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txins
d_txins_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2538 ~v0 ~v1 v2 = du_txins_2538 v2
du_txins_2538 ::
  T_GeneralizeTel_78921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2538 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2526
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txouts
d_txouts_2540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2540 ~v0 ~v1 v2 = du_txouts_2540 v2
du_txouts_2540 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2540 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2530
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txsize
d_txsize_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Integer
d_txsize_2544 ~v0 ~v1 v2 = du_txsize_2544 v2
du_txsize_2544 :: T_GeneralizeTel_78921 -> Integer
du_txsize_2544 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2556
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2548 ~v0 ~v1 v2 = du_txvldt_2548 v2
du_txvldt_2548 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2548 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2536
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2552 ~v0 ~v1 v2 = du_txwdrls_2552 v2
du_txwdrls_2552 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2552 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2540
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2596
         (coe d_'46'generalizedField'45'tx_78913 v0))
-- Ledger.Utxo._.pparams
d_pparams_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2556 ~v0 ~v1 v2 = du_pparams_2556 v2
du_pparams_2556 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2556 v0
  = coe d_pparams_1722 (coe d_'46'generalizedField'45'Γ_78915 v0)
-- Ledger.Utxo._.slot
d_slot_2558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> AgdaAny
d_slot_2558 ~v0 ~v1 v2 = du_slot_2558 v2
du_slot_2558 :: T_GeneralizeTel_78921 -> AgdaAny
du_slot_2558 v0
  = coe d_slot_1720 (coe d_'46'generalizedField'45'Γ_78915 v0)
-- Ledger.Utxo._.treasury
d_treasury_2560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Integer
d_treasury_2560 ~v0 ~v1 v2 = du_treasury_2560 v2
du_treasury_2560 :: T_GeneralizeTel_78921 -> Integer
du_treasury_2560 v0
  = coe d_treasury_1724 (coe d_'46'generalizedField'45'Γ_78915 v0)
-- Ledger.Utxo._.deposits
d_deposits_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2564 ~v0 ~v1 v2 = du_deposits_2564 v2
du_deposits_2564 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2564 v0
  = coe d_deposits_1740 (coe d_'46'generalizedField'45's_78917 v0)
-- Ledger.Utxo._.donations
d_donations_2566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Integer
d_donations_2566 ~v0 ~v1 v2 = du_donations_2566 v2
du_donations_2566 :: T_GeneralizeTel_78921 -> Integer
du_donations_2566 v0
  = coe d_donations_1742 (coe d_'46'generalizedField'45's_78917 v0)
-- Ledger.Utxo._.fees
d_fees_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> Integer
d_fees_2568 ~v0 ~v1 v2 = du_fees_2568 v2
du_fees_2568 :: T_GeneralizeTel_78921 -> Integer
du_fees_2568 v0
  = coe d_fees_1738 (coe d_'46'generalizedField'45's_78917 v0)
-- Ledger.Utxo._.utxo
d_utxo_2570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2570 ~v0 ~v1 v2 = du_utxo_2570 v2
du_utxo_2570 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2570 v0
  = coe d_utxo_1736 (coe d_'46'generalizedField'45's_78917 v0)
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2586 ->
  T_UTxOEnv_1712 ->
  T_UTxOState_1726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2636 v0 v1 v2 v3 v4
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
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2526
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))
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
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))
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
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092
                                           (coe v0))))
                                  (coe v6)
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_526
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
                                     (coe d_utxo_1736 (coe v4))))))
                       v5))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2526
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2528
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0)))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2526
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2528
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_1966 (coe v0) (coe d_slot_1720 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2536
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950)
                        (coe
                           d_feesOK_2102 (coe v0) (coe v1) (coe d_pparams_1722 (coe v3))
                           (coe v2) (coe d_utxo_1736 (coe v4)))
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
                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))))
                           (coe
                              du_consumed_2270 (coe v0) (coe d_pparams_1722 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))
                           (coe
                              du_produced_2278 (coe v0) (coe d_pparams_1722 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2534
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txsize_2556
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2596 (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.PParams.d_maxTxSize_280
                                       (coe d_pparams_1722 (coe v3)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                           (coe v0)))
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
                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                             (coe v0))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                             (coe v0))))))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))))))
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                             (coe v0))
                                                          (mulInt
                                                             (coe
                                                                du_utxoEntrySize_1696 (coe v0)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v6)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_minUTxOValue_308
                                                                (coe d_pparams_1722 (coe v3)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2620
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
                                             MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2530
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2596
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
                                               erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1092
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                              (coe v0)))
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
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))))))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                  (coe
                                                     (\ v6 ->
                                                        coe
                                                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                                             (coe
                                                                MAlonzo.Code.Ledger.Abstract.d_serSize_1514
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2620
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v6))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_maxValSize_284
                                                                (coe d_pparams_1722 (coe v3)))))))
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2530
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2596
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
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                              (coe v0)))
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
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0)))))))
                                                  erased
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
                                             MAlonzo.Code.Interface.IsSet.du_range_528
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2530
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2596
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
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2032
                                                                 (coe v0)))
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
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                   (coe v0))))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1638
                                                                                   (coe v0))))))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                       (coe v0)))))))
                                                     erased
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
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.du_netId_106
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v6)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_2148
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_range_528
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2610
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2530
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2596
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
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_176
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                                                 (coe v0))))
                                                        erased
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
                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.d_net_76
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_networkId_2148
                                                                      (coe v0)))))
                                                        v5))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_dom_526
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2540
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2596
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   du_'8799''63'_2480
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2552
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2596
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_networkId_2148
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108
                                                         (coe v0))))
                                                (coe
                                                   du_'8799''63'_2480
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2554
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2596
                                                         (coe v2)))
                                                   (coe d_treasury_1724 (coe v3))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_78913 ::
  T_GeneralizeTel_78921 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2586
d_'46'generalizedField'45'tx_78913
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_78915 ::
  T_GeneralizeTel_78921 -> T_UTxOEnv_1712
d_'46'generalizedField'45'Γ_78915 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_78917 ::
  T_GeneralizeTel_78921 -> T_UTxOState_1726
d_'46'generalizedField'45's_78917 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_78919 ::
  T_GeneralizeTel_78921 -> T_UTxOState_1726
d_'46'generalizedField'45's''_78919
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_78921 a0 a1 = ()
data T_GeneralizeTel_78921
  = C_mkGeneralizeTel_78923 MAlonzo.Code.Ledger.Transaction.T_Tx_2586
                            T_UTxOEnv_1712 T_UTxOState_1726 T_UTxOState_1726
