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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_84 a0 = ()
-- _.THash
d_THash_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_100 = erased
-- _.Datum
d_Datum_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Datum_106 = erased
-- _.DecEq-Credential
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- _.ExUnits
d_ExUnits_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_224 = erased
-- _.HasData-Tx
d_HasData'45'Tx_358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
d_HasData'45'Tx_358 ~v0 = du_HasData'45'Tx_358
du_HasData'45'Tx_358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4326
du_HasData'45'Tx_358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654
-- _.HasGuards-Tx
d_HasGuards'45'Tx_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
d_HasGuards'45'Tx_426 ~v0 = du_HasGuards'45'Tx_426
du_HasGuards'45'Tx_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4386
du_HasGuards'45'Tx_426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4658
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
d_HasSpendInputs'45'Tx_540 ~v0 = du_HasSpendInputs'45'Tx_540
du_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4206
du_HasSpendInputs'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104
d_HasSubTransactions'45'TopLevelTx_556 ~v0
  = du_HasSubTransactions'45'TopLevelTx_556
du_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4104
du_HasSubTransactions'45'TopLevelTx_556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4578
-- _.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
d_HasTopLevelGuards'45'Tx_562 ~v0 = du_HasTopLevelGuards'45'Tx_562
du_HasTopLevelGuards'45'Tx_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4166
du_HasTopLevelGuards'45'Tx_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4582
-- _.HasTxId-Tx
d_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
d_HasTxId'45'Tx_584 ~v0 = du_HasTxId'45'Tx_584
du_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4126
du_HasTxId'45'Tx_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4644
-- _.Hashable-Script
d_Hashable'45'Script_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- _.IsBootstrapAddr
d_IsBootstrapAddr_646 a0 a1 = ()
-- _.IsBootstrapAddr?
d_IsBootstrapAddr'63'_648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_648 ~v0 = du_IsBootstrapAddr'63'_648
du_IsBootstrapAddr'63'_648 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_648
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- _.IsKeyHashObj
d_IsKeyHashObj_652 a0 a1 = ()
-- _.IsKeyHashObj?
d_IsKeyHashObj'63'_654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_654 ~v0 = du_IsKeyHashObj'63'_654
du_IsKeyHashObj'63'_654 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_654
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- _.THash
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.Language
d_Language_680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_680 = erased
-- _.P1Script
d_P1Script_722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_722 = erased
-- _.PlutusScript
d_PlutusScript_728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_728 = erased
-- _.PParams
d_PParams_732 a0 = ()
-- _.PlutusV4
d_PlutusV4_756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_756 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- _.Redeemer
d_Redeemer_778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_778 = erased
-- _.RedeemerPtr
d_RedeemerPtr_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_780 = erased
-- _.Script
d_Script_814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_814 = erased
-- _.ScriptHash
d_ScriptHash_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_822 = erased
-- _.SubLevelTx
d_SubLevelTx_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_892 = erased
-- _.TopLevelTx
d_TopLevelTx_912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_912 = erased
-- _.Tx
d_Tx_918 a0 a1 = ()
-- _.TxOut
d_TxOut_936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_936 = erased
-- _.UTxO
d_UTxO_946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_946 = erased
-- _.allReferenceScripts
d_allReferenceScripts_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
      (coe v0)
-- _.allWitnessScripts
d_allWitnessScripts_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1016 ~v0 = du_allWitnessScripts_1016
du_allWitnessScripts_1016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_1016
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
-- _.isKeyHashObj
d_isKeyHashObj_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1090 ~v0 = du_isKeyHashObj_1090
du_isKeyHashObj_1090 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1090
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_1110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1110 ~v0 = du_isScriptObj_1110
du_isScriptObj_1110 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1110
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1114 = erased
-- _.language
d_language_1124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_1124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
            (coe v0)))
-- _.payCred
d_payCred_1146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1146 ~v0 = du_payCred_1146
du_payCred_1146 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1146
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- _.toP1Script
d_toP1Script_1196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1196 ~v0 = du_toP1Script_1196
du_toP1Script_1196 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1196
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- _.toP2Script
d_toP2Script_1198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1198 ~v0 = du_toP2Script_1198
du_toP2Script_1198 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- _.validP1Script
d_validP1Script_1222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1222 = erased
-- _.PParams.Emax
d_Emax_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- _.PParams.a
d_a_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- _.PParams.a0
d_a0_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- _.PParams.b
d_b_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- _.PParams.costmdls
d_costmdls_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- _.PParams.nopt
d_nopt_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- _.PParams.prices
d_prices_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- _.PParams.pv
d_pv_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- _.Tx.isValid
d_isValid_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  AgdaAny
d_isValid_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3856
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Maybe AgdaAny
d_txAuxData_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe v0)
-- _.Tx.txBody
d_txBody_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe v0)
-- _.Tx.txSize
d_txSize_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Integer
d_txSize_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3854
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.IsConwayCert
d_IsConwayCert_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 -> ()
d_IsConwayCert_2876 = erased
-- Ledger.Dijkstra.Specification.Utxow._.poolOwners
d_poolOwners_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 ->
  [AgdaAny]
d_poolOwners_2954 ~v0 ~v1 = du_poolOwners_2954
du_poolOwners_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454 ->
  [AgdaAny]
du_poolOwners_2954
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1486
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3178 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3182 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._.HasLegacyMode-UTxOEnv
d_HasLegacyMode'45'UTxOEnv_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasLegacyMode_3340
d_HasLegacyMode'45'UTxOEnv_3216 ~v0 ~v1
  = du_HasLegacyMode'45'UTxOEnv_3216
du_HasLegacyMode'45'UTxOEnv_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasLegacyMode_3340
du_HasLegacyMode'45'UTxOEnv_3216
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasLegacyMode'45'UTxOEnv_3426
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'SubUTxOEnv_3218 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3218
du_HasPParams'45'SubUTxOEnv_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'SubUTxOEnv_3218
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'SubUTxOEnv_3430
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'UTxOEnv_3220 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3220
du_HasPParams'45'UTxOEnv_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'UTxOEnv_3220
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'UTxOEnv_3418
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3360
d_HasScriptPool'45'SubUTxOEnv_3228 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3228
du_HasScriptPool'45'SubUTxOEnv_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3360
du_HasScriptPool'45'SubUTxOEnv_3228
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'SubUTxOEnv_3438
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3360
d_HasScriptPool'45'UTxOEnv_3230 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3230
du_HasScriptPool'45'UTxOEnv_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3360
du_HasScriptPool'45'UTxOEnv_3230
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'UTxOEnv_3424
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
d_HasUTxO'45'SubUTxOEnv_3244 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3244
du_HasUTxO'45'SubUTxOEnv_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
du_HasUTxO'45'SubUTxOEnv_3244
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'SubUTxOEnv_3434
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
d_HasUTxO'45'UTxOEnv_3246 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3246
du_HasUTxO'45'UTxOEnv_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3812
du_HasUTxO'45'UTxOEnv_3246
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOEnv_3422
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv
d_SubUTxOEnv_3266 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv
d_UTxOEnv_3278 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState
d_UTxOState_3282 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.allScripts
d_allScripts_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  Bool
d_isTopLevelValid_3382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3276
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.pparams
d_pparams_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3268
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.slot
d_slot_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  AgdaAny
d_slot_3386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3266
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.treasury
d_treasury_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  Integer
d_treasury_3388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3270
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.utxo₀
d_utxo'8320'_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.allScripts
d_allScripts_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.legacyMode
d_legacyMode_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  Bool
d_legacyMode_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3248
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.pools₀
d_pools'8320'_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_3398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3244
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.pparams
d_pparams_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3238
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.slot
d_slot_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  AgdaAny
d_slot_3402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3236
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.treasury
d_treasury_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  Integer
d_treasury_3404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3240
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.utxo₀
d_utxo'8320'_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.donations
d_donations_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280 ->
  Integer
d_donations_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3292
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.fees
d_fees_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280 ->
  Integer
d_fees_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3290
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.utxo
d_utxo_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3288
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.allCredsNeeded
d_allCredsNeeded_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_3428 v0 ~v1 = du_allCredsNeeded_3428 v0
du_allCredsNeeded_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allCredsNeeded_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3496
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credentialToP2Script
d_credentialToP2Script_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
d_credentialToP2Script_3434 v0 ~v1
  = du_credentialToP2Script_3434 v0
du_credentialToP2Script_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
du_credentialToP2Script_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credsNeeded
d_credsNeeded_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_3436 v0 ~v1 = du_credsNeeded_3436 v0
du_credsNeeded_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.rdptr
d_rdptr_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3164 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_3444 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
      (coe v0) (coe v1) v3 v4
-- Ledger.Dijkstra.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_3450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_3450 ~v0 ~v1 = du_txOutToDataHash_3450
du_txOutToDataHash_3450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_3450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428
-- Ledger.Dijkstra.Specification.Utxow.UsesBootstrapAddress
d_UsesBootstrapAddress_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  ()
d_UsesBootstrapAddress_3472 = erased
-- Ledger.Dijkstra.Specification.Utxow.HasInlineDatum
d_HasInlineDatum_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_HasInlineDatum_3546 = erased
-- Ledger.Dijkstra.Specification.Utxow.HasDataHash
d_HasDataHash_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_HasDataHash_3550 = erased
-- Ledger.Dijkstra.Specification.Utxow._._.UsesV2Features
d_UsesV2Features_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_UsesV2Features_3566 = erased
-- Ledger.Dijkstra.Specification.Utxow._.UsesV3Features
d_UsesV3Features_3570 a0 a1 a2 = ()
data T_UsesV3Features_3570
  = C_hasVotes_3572 | C_hasProposals_3574 |
    C_hasDonation_3576 MAlonzo.Code.Data.Nat.Base.T_NonZero_112 |
    C_hasTreasure_3578 MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 |
    C_hasConwayCerts_3580 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Dijkstra.Specification.Utxow._.UsesV4Features
d_UsesV4Features_3582 a0 a1 a2 = ()
data T_UsesV4Features_3582
  = C_hasScriptGuards_3586 | C_hasDirectDeposits_3588 |
    C_hasBalanceIntervals_3590 | C_hasStartingBalanceIntervals_3592
-- Ledger.Dijkstra.Specification.Utxow._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_3600 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_3600 v2
du_Dec'45'UsesV3Features_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_3600 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                       (coe
                          (\ v1 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3932
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                          (coe
                             (\ v2 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3934
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                (coe v0)))))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
          coe
            (let v3
                   = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                       (coe
                          MAlonzo.Code.Prelude.d_Dec'45'NonZero_98
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3930
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                (coe v0)))) in
             coe
               (let v4
                      = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                          (coe
                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                             (coe
                                (\ v4 ->
                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3938
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                   (coe v0)))) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1630))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                   (coe v0))) in
                   coe
                     (let v6
                            = let v6
                                    = let v6
                                            = let v6
                                                    = case coe v5 of
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                                          -> coe
                                                               seq (coe v6)
                                                               (case coe v7 of
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                                                    -> coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                            (coe
                                                                               C_hasConwayCerts_3580
                                                                               (coe v8)))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> MAlonzo.RTE.mazUnreachableError in
                                              coe
                                                (case coe v4 of
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                                     -> case coe v7 of
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                            -> case coe v8 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                                   -> coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe v7)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                           (coe
                                                                              C_hasTreasure_3578
                                                                              (coe v9)))
                                                                 _ -> coe v6
                                                          _ -> coe v6
                                                   _ -> MAlonzo.RTE.mazUnreachableError) in
                                      coe
                                        (case coe v3 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                             -> case coe v7 of
                                                  MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                    -> case coe v8 of
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                           -> coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                   (coe
                                                                      C_hasDonation_3576 (coe v9)))
                                                         _ -> coe v6
                                                  _ -> coe v6
                                           _ -> MAlonzo.RTE.mazUnreachableError) in
                              coe
                                (case coe v2 of
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                     -> case coe v7 of
                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                            -> case coe v8 of
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                   -> coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                        (coe v7)
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                           (coe C_hasProposals_3574))
                                                 _ -> coe v6
                                          _ -> coe v6
                                   _ -> MAlonzo.RTE.mazUnreachableError) in
                      coe
                        (case coe v1 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                             -> let v9
                                      = let v9
                                              = let v9
                                                      = let v9
                                                              = case coe v5 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                                                    -> case coe v9 of
                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                           -> case coe v10 of
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                                                  -> coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                       (coe v9)
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                          (coe
                                                                                             C_hasConwayCerts_3580
                                                                                             (coe
                                                                                                v11)))
                                                                                _ -> coe v6
                                                                         _ -> coe v6
                                                                  _ -> MAlonzo.RTE.mazUnreachableError in
                                                        coe
                                                          (case coe v4 of
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                               -> case coe v10 of
                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                      -> case coe v11 of
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                                             -> coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                  (coe v10)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                     (coe
                                                                                        C_hasTreasure_3578
                                                                                        (coe v12)))
                                                                           _ -> coe v9
                                                                    _ -> coe v9
                                                             _ -> MAlonzo.RTE.mazUnreachableError) in
                                                coe
                                                  (case coe v3 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                       -> case coe v10 of
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                              -> case coe v11 of
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                                     -> coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v10)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                             (coe
                                                                                C_hasDonation_3576
                                                                                (coe v12)))
                                                                   _ -> coe v9
                                                            _ -> coe v9
                                                     _ -> MAlonzo.RTE.mazUnreachableError) in
                                        coe
                                          (case coe v2 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                               -> case coe v10 of
                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                      -> case coe v11 of
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                             -> coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe v10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                     (coe C_hasProposals_3574))
                                                           _ -> coe v9
                                                    _ -> coe v9
                                             _ -> MAlonzo.RTE.mazUnreachableError) in
                                coe
                                  (if coe v7
                                     then case coe v8 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe v7)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe C_hasVotes_3572))
                                            _ -> coe v9
                                     else (let v10
                                                 = let v10
                                                         = let v10
                                                                 = case coe v5 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                                       -> case coe v10 of
                                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                              -> case coe v11 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                                                     -> coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe v10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                             (coe
                                                                                                C_hasConwayCerts_3580
                                                                                                (coe
                                                                                                   v12)))
                                                                                   _ -> coe v9
                                                                            _ -> coe v9
                                                                     _ -> MAlonzo.RTE.mazUnreachableError in
                                                           coe
                                                             (case coe v4 of
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                                  -> case coe v11 of
                                                                       MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                         -> case coe v12 of
                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                                                -> coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v11)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                        (coe
                                                                                           C_hasTreasure_3578
                                                                                           (coe
                                                                                              v13)))
                                                                              _ -> coe v10
                                                                       _ -> coe v10
                                                                _ -> MAlonzo.RTE.mazUnreachableError) in
                                                   coe
                                                     (case coe v3 of
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                          -> case coe v11 of
                                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                 -> case coe v12 of
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                                        -> coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe v11)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                (coe
                                                                                   C_hasDonation_3576
                                                                                   (coe v13)))
                                                                      _ -> coe v10
                                                               _ -> coe v10
                                                        _ -> MAlonzo.RTE.mazUnreachableError) in
                                           coe
                                             (case coe v2 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                  -> let v13
                                                           = let v13
                                                                   = let v13
                                                                           = case coe v5 of
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                                                 -> case coe v13 of
                                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                        -> case coe
                                                                                                  v14 of
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                    (coe
                                                                                                       v13)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                       (coe
                                                                                                          C_hasConwayCerts_3580
                                                                                                          (coe
                                                                                                             v15)))
                                                                                             _ -> coe
                                                                                                    v10
                                                                                      _ -> coe v10
                                                                               _ -> MAlonzo.RTE.mazUnreachableError in
                                                                     coe
                                                                       (case coe v4 of
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                                            -> case coe v14 of
                                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                   -> case coe
                                                                                             v15 of
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                                          -> coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v14)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  (coe
                                                                                                     C_hasTreasure_3578
                                                                                                     (coe
                                                                                                        v16)))
                                                                                        _ -> coe v13
                                                                                 _ -> coe v13
                                                                          _ -> MAlonzo.RTE.mazUnreachableError) in
                                                             coe
                                                               (case coe v3 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                                    -> case coe v14 of
                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                           -> case coe v15 of
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                                  -> coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                       (coe v14)
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                          (coe
                                                                                             C_hasDonation_3576
                                                                                             (coe
                                                                                                v16)))
                                                                                _ -> coe v13
                                                                         _ -> coe v13
                                                                  _ -> MAlonzo.RTE.mazUnreachableError) in
                                                     coe
                                                       (if coe v11
                                                          then case coe v12 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                   -> coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe v11)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                           (coe
                                                                              C_hasProposals_3574))
                                                                 _ -> coe v13
                                                          else (let v14
                                                                      = let v14
                                                                              = case coe v5 of
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                                                    -> case coe
                                                                                              v14 of
                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                           -> case coe
                                                                                                     v15 of
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                                                  -> coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                       (coe
                                                                                                          v14)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                          (coe
                                                                                                             C_hasConwayCerts_3580
                                                                                                             (coe
                                                                                                                v16)))
                                                                                                _ -> coe
                                                                                                       v13
                                                                                         _ -> coe
                                                                                                v13
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError in
                                                                        coe
                                                                          (case coe v4 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                                               -> case coe v15 of
                                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                      -> case coe
                                                                                                v16 of
                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                  (coe
                                                                                                     v15)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                     (coe
                                                                                                        C_hasTreasure_3578
                                                                                                        (coe
                                                                                                           v17)))
                                                                                           _ -> coe
                                                                                                  v14
                                                                                    _ -> coe v14
                                                                             _ -> MAlonzo.RTE.mazUnreachableError) in
                                                                coe
                                                                  (case coe v3 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                                       -> let v17
                                                                                = let v17
                                                                                        = case coe
                                                                                                 v5 of
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                                              -> case coe
                                                                                                        v17 of
                                                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                     -> case coe
                                                                                                               v18 of
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                                                            -> coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                 (coe
                                                                                                                    v17)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                    (coe
                                                                                                                       C_hasConwayCerts_3580
                                                                                                                       (coe
                                                                                                                          v19)))
                                                                                                          _ -> coe
                                                                                                                 v14
                                                                                                   _ -> coe
                                                                                                          v14
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                  coe
                                                                                    (case coe v4 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                                         -> case coe
                                                                                                   v18 of
                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                -> case coe
                                                                                                          v19 of
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v20
                                                                                                       -> coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               v18)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                               (coe
                                                                                                                  C_hasTreasure_3578
                                                                                                                  (coe
                                                                                                                     v20)))
                                                                                                     _ -> coe
                                                                                                            v17
                                                                                              _ -> coe
                                                                                                     v17
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError) in
                                                                          coe
                                                                            (if coe v15
                                                                               then case coe v16 of
                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                                        -> coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v15)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                (coe
                                                                                                   C_hasDonation_3576
                                                                                                   (coe
                                                                                                      v18)))
                                                                                      _ -> coe v17
                                                                               else (let v18
                                                                                           = case coe
                                                                                                    v5 of
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                                                 -> case coe
                                                                                                           v18 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                        -> case coe
                                                                                                                  v19 of
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v20
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                    (coe
                                                                                                                       v18)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                       (coe
                                                                                                                          C_hasConwayCerts_3580
                                                                                                                          (coe
                                                                                                                             v20)))
                                                                                                             _ -> coe
                                                                                                                    v17
                                                                                                      _ -> coe
                                                                                                             v17
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                     coe
                                                                                       (case coe
                                                                                               v4 of
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                                            -> let v21
                                                                                                     = case coe
                                                                                                              v5 of
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                                           -> case coe
                                                                                                                     v21 of
                                                                                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                                                  -> case coe
                                                                                                                            v22 of
                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                              (coe
                                                                                                                                 v21)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                 (coe
                                                                                                                                    C_hasConwayCerts_3580
                                                                                                                                    (coe
                                                                                                                                       v23)))
                                                                                                                       _ -> coe
                                                                                                                              v18
                                                                                                                _ -> coe
                                                                                                                       v18
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                               coe
                                                                                                 (if coe
                                                                                                       v19
                                                                                                    then case coe
                                                                                                                v20 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                                             -> coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                  (coe
                                                                                                                     v19)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                     (coe
                                                                                                                        C_hasTreasure_3578
                                                                                                                        (coe
                                                                                                                           v22)))
                                                                                                           _ -> coe
                                                                                                                  v21
                                                                                                    else (case coe
                                                                                                                 v5 of
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                                                              -> if coe
                                                                                                                      v22
                                                                                                                   then case coe
                                                                                                                               v23 of
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                                                                            -> coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                 (coe
                                                                                                                                    v22)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                    (coe
                                                                                                                                       C_hasConwayCerts_3580
                                                                                                                                       (coe
                                                                                                                                          v24)))
                                                                                                                          _ -> coe
                                                                                                                                 v21
                                                                                                                   else (case coe
                                                                                                                                v8 of
                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                             -> case coe
                                                                                                                                       v12 of
                                                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                    -> case coe
                                                                                                                                              v16 of
                                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                           -> case coe
                                                                                                                                                     v20 of
                                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                                  -> case coe
                                                                                                                                                            v23 of
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                                                         -> coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                              (coe
                                                                                                                                                                 v22)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                                                       _ -> coe
                                                                                                                                                              v21
                                                                                                                                                _ -> coe
                                                                                                                                                       v21
                                                                                                                                         _ -> coe
                                                                                                                                                v21
                                                                                                                                  _ -> coe
                                                                                                                                         v21
                                                                                                                           _ -> coe
                                                                                                                                  v21)
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)))
                           _ -> MAlonzo.RTE.mazUnreachableError)))))))
-- Ledger.Dijkstra.Specification.Utxow._.Dec-UsesV4Features
d_Dec'45'UsesV4Features_3656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV4Features_3656 ~v0 ~v1 v2
  = du_Dec'45'UsesV4Features_3656 v2
du_Dec'45'UsesV4Features_3656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV4Features_3656 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (let v1
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56)
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                          (coe
                             (\ v2 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3950
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                   (coe v0))))))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                          (coe
                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                             (coe
                                (\ v3 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3952
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                      (coe v0))))))
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                             (coe
                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                                (coe
                                   (\ v4 ->
                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3954
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                         (coe v0))))))
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                coe
                  (let v5
                         = let v5
                                 = let v5
                                         = case coe v4 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                               -> coe
                                                    seq (coe v5)
                                                    (coe
                                                       seq (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                             (coe
                                                                C_hasStartingBalanceIntervals_3592))))
                                             _ -> MAlonzo.RTE.mazUnreachableError in
                                   coe
                                     (case coe v3 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                          -> case coe v6 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                 -> case coe v7 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                                        -> coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                (coe C_hasBalanceIntervals_3590))
                                                      _ -> coe v5
                                               _ -> coe v5
                                        _ -> MAlonzo.RTE.mazUnreachableError) in
                           coe
                             (case coe v2 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                  -> case coe v6 of
                                       MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                         -> case coe v7 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                                -> coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                        (coe C_hasDirectDeposits_3588))
                                              _ -> coe v5
                                       _ -> coe v5
                                _ -> MAlonzo.RTE.mazUnreachableError) in
                   coe
                     (case coe v1 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                          -> let v8
                                   = let v8
                                           = let v8
                                                   = case coe v4 of
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                         -> case coe v8 of
                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                -> case coe v9 of
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                                                       -> coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                            (coe v8)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                               (coe
                                                                                  C_hasStartingBalanceIntervals_3592))
                                                                     _ -> coe v5
                                                              _ -> coe v5
                                                       _ -> MAlonzo.RTE.mazUnreachableError in
                                             coe
                                               (case coe v3 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                                    -> case coe v9 of
                                                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                           -> case coe v10 of
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                                  -> coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v9)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             C_hasBalanceIntervals_3590))
                                                                _ -> coe v8
                                                         _ -> coe v8
                                                  _ -> MAlonzo.RTE.mazUnreachableError) in
                                     coe
                                       (case coe v2 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                            -> case coe v9 of
                                                 MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                   -> case coe v10 of
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                          -> coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                               (coe v9)
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                  (coe C_hasDirectDeposits_3588))
                                                        _ -> coe v8
                                                 _ -> coe v8
                                          _ -> MAlonzo.RTE.mazUnreachableError) in
                             coe
                               (if coe v6
                                  then case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v6)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                   (coe C_hasScriptGuards_3586))
                                         _ -> coe v8
                                  else (let v9
                                              = let v9
                                                      = case coe v4 of
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                                            -> case coe v9 of
                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                   -> case coe v10 of
                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                                          -> coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                               (coe v9)
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                  (coe
                                                                                     C_hasStartingBalanceIntervals_3592))
                                                                        _ -> coe v8
                                                                 _ -> coe v8
                                                          _ -> MAlonzo.RTE.mazUnreachableError in
                                                coe
                                                  (case coe v3 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                       -> case coe v10 of
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                              -> case coe v11 of
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                                     -> coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v10)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                             (coe
                                                                                C_hasBalanceIntervals_3590))
                                                                   _ -> coe v9
                                                            _ -> coe v9
                                                     _ -> MAlonzo.RTE.mazUnreachableError) in
                                        coe
                                          (case coe v2 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                               -> let v12
                                                        = let v12
                                                                = case coe v4 of
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                                      -> case coe v12 of
                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                             -> case coe v13 of
                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                                    -> coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                         (coe v12)
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                            (coe
                                                                                               C_hasStartingBalanceIntervals_3592))
                                                                                  _ -> coe v9
                                                                           _ -> coe v9
                                                                    _ -> MAlonzo.RTE.mazUnreachableError in
                                                          coe
                                                            (case coe v3 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                                 -> case coe v13 of
                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                        -> case coe v14 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                               -> coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       (coe
                                                                                          C_hasBalanceIntervals_3590))
                                                                             _ -> coe v12
                                                                      _ -> coe v12
                                                               _ -> MAlonzo.RTE.mazUnreachableError) in
                                                  coe
                                                    (if coe v10
                                                       then case coe v11 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                                -> coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                     (coe v10)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                        (coe
                                                                           C_hasDirectDeposits_3588))
                                                              _ -> coe v12
                                                       else (let v13
                                                                   = case coe v4 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                                         -> case coe v13 of
                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                -> case coe v14 of
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                                       -> coe
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                            (coe
                                                                                               v13)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                               (coe
                                                                                                  C_hasStartingBalanceIntervals_3592))
                                                                                     _ -> coe v12
                                                                              _ -> coe v12
                                                                       _ -> MAlonzo.RTE.mazUnreachableError in
                                                             coe
                                                               (case coe v3 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                                    -> let v16
                                                                             = case coe v4 of
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                                   -> case coe
                                                                                             v16 of
                                                                                        MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                                          -> case coe
                                                                                                    v17 of
                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         v16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                         (coe
                                                                                                            C_hasStartingBalanceIntervals_3592))
                                                                                               _ -> coe
                                                                                                      v13
                                                                                        _ -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError in
                                                                       coe
                                                                         (if coe v14
                                                                            then case coe v15 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                                     -> coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe v14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                             (coe
                                                                                                C_hasBalanceIntervals_3590))
                                                                                   _ -> coe v16
                                                                            else (case coe v4 of
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                                      -> if coe v17
                                                                                           then case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            v17)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                            (coe
                                                                                                               C_hasStartingBalanceIntervals_3592))
                                                                                                  _ -> coe
                                                                                                         v16
                                                                                           else (case coe
                                                                                                        v7 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                     -> case coe
                                                                                                               v11 of
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                            -> case coe
                                                                                                                      v15 of
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                   -> case coe
                                                                                                                             v18 of
                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                                          -> coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                               (coe
                                                                                                                                  v17)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                                                                        _ -> coe
                                                                                                                               v16
                                                                                                                 _ -> coe
                                                                                                                        v16
                                                                                                          _ -> coe
                                                                                                                 v16
                                                                                                   _ -> coe
                                                                                                          v16)
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError))))))
-- Ledger.Dijkstra.Specification.Utxow.languages
d_languages_3690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  [AgdaAny] -> [AgdaAny]
d_languages_3690 v0 ~v1 v2 = du_languages_3690 v0 v2
du_languages_3690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> [AgdaAny]
du_languages_3690 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
               (coe v0))))
      v1
-- Ledger.Dijkstra.Specification.Utxow.allowedLanguagesLegacy
d_allowedLanguagesLegacy_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguagesLegacy_3694 v0 ~v1 v2 v3
  = du_allowedLanguagesLegacy_3694 v0 v2 v3
du_allowedLanguagesLegacy_3694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguagesLegacy_3694 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.ToBool.du_if_then_else__38
         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                  (coe du_os_3704 (coe v0) (coe v1) (coe v2)))
               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                        (coe v0))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8745'__732
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                     v1)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614)
                     v1))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                 (coe
                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v0))))))
         (coe
            (\ v3 ->
               MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                 (coe
                    MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe du_os_3704 (coe v0) (coe v1) (coe v2)))
                  (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe du_Dec'45'UsesV4Features_3656 (coe v1))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                              (coe v0))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du__'8745'__732
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                           v1)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614)
                           v1))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'8709'_470
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                    (coe
                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                             (coe v0))))))
            (coe
               (\ v3 ->
                  MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                    (coe
                       MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.ToBool.du_if_then_else__38
               (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                        (coe du_os_3704 (coe v0) (coe v1) (coe v2)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV4Features_3656 (coe v1))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV3Features_3600 (coe v1))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                       (coe
                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0))))))
               (coe
                  (\ v3 ->
                     MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                       (coe
                          MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
            (coe
               MAlonzo.Code.Class.ToBool.du_if_then_else__38
               (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                        (coe du_os_3704 (coe v0) (coe v1) (coe v2)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV4Features_3656 (coe v1))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe du_Dec'45'UsesV3Features_3600 (coe v1))
                           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                      (coe
                                         (\ v4 ->
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4680
                                         (coe v3))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du__'8746'__708
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4666)
                                       v1))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                (coe v0))))
                                       (coe v2)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du__'8746'__708
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                                             v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614)
                                             v1))))))
                           (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                       (coe
                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0))))))
               (coe
                  (\ v3 ->
                     MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                       (coe
                          MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))
-- Ledger.Dijkstra.Specification.Utxow._.os
d_os_3704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_3704 v0 ~v1 v2 v3 = du_os_3704 v0 v2 v3
du_os_3704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_3704 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4434
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4666)
            v1))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614)
                  v1))))
-- Ledger.Dijkstra.Specification.Utxow._.usesBootstrapAddr
d_usesBootstrapAddr_3706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesBootstrapAddr_3706 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV4Features
d_usesV4Features_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV4Features_3712 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV3Features
d_usesV3Features_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV3Features_3714 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV2Features
d_usesV2Features_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV2Features_3716 = erased
-- Ledger.Dijkstra.Specification.Utxow.allowedLanguages
d_allowedLanguages_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_3718 v0 ~v1 ~v2 v3 v4
  = du_allowedLanguages_3718 v0 v3 v4
du_allowedLanguages_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_3718 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_range_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v1))))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_range_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                 (coe v0))))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'8746'__708
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                 (coe v1))))))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                     (coe v0))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                     (coe v0))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__732
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4234
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4614)
                  v1))
            (coe
               MAlonzo.Code.Axiom.Set.du_'8709'_470
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
              (coe
                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                       (coe v0))))))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
-- Ledger.Dijkstra.Specification.Utxow.TxOutSpendable-PlutusV1-V2
d_TxOutSpendable'45'PlutusV1'45'V2_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV1'45'V2_3724 = erased
-- Ledger.Dijkstra.Specification.Utxow.neededP2Scripts
d_neededP2Scripts_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
d_neededP2Scripts_3734 v0 ~v1 v2 v3 v4 v5
  = du_neededP2Scripts_3734 v0 v2 v3 v4 v5
du_neededP2Scripts_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
du_neededP2Scripts_3734 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
      (coe
         du_scriptsNeeded_3748 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Dijkstra.Specification.Utxow._.scriptHashesNeeded
d_scriptHashesNeeded_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
d_scriptHashesNeeded_3746 v0 ~v1 v2 v3 ~v4 v5
  = du_scriptHashesNeeded_3746 v0 v2 v3 v5
du_scriptHashesNeeded_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [AgdaAny]
du_scriptHashesNeeded_3746 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
            (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptsNeeded
d_scriptsNeeded_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsNeeded_3748 v0 ~v1 v2 v3 v4 v5
  = du_scriptsNeeded_3748 v0 v2 v3 v4 v5
du_scriptsNeeded_3748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsNeeded_3748 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
      (\ v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
           (coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased
              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                    (coe v0))))
           (coe
              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                    (coe v0)))
              v5)
           (coe
              MAlonzo.Code.Class.IsSet.d_toSet_526
              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
              (coe
                 du_scriptHashesNeeded_3746 (coe v0) (coe v1) (coe v2) (coe v4))))
      v3
-- Ledger.Dijkstra.Specification.Utxow.isLegacyMode
d_isLegacyMode_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Bool
d_isLegacyMode_3752 v0 ~v1 v2 v3 v4
  = du_isLegacyMode_3752 v0 v2 v3 v4
du_isLegacyMode_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  Bool
du_isLegacyMode_3752 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
         (coe
            MAlonzo.Code.Axiom.Set.d_any'63'_1666
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased erased
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0)))
                          v4)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_456
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                            (coe v0))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe
            du_neededP2Scripts_3734 (coe v0)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
            (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Utxow.hashScriptIntegrity
d_hashScriptIntegrity_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_3762 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                 (coe
                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                      (coe v0))))))
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0)))))))
              (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8709'_470
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                             (coe v0)))))
                 v3
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_470
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
       coe
         (let v8
                = coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                      (coe v0)))))))
                    v5
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_470
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
          coe
            (case coe v6 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                 -> let v11
                          = coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2730
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3262
                                             v1 v2)
                                          v3)))) in
                    coe
                      (case coe v9 of
                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                           -> case coe v10 of
                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                  -> case coe v7 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                         -> case coe v13 of
                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                -> case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                       -> case coe v8 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                              -> case coe v16 of
                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                     -> case coe v17 of
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                            -> coe
                                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                          _ -> coe v11
                                                                   _ -> coe v11
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe v11
                                              _ -> coe v11
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> coe v11
                         _ -> coe v11)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Dijkstra.Specification.Utxow.TopLevelGuardWellFormed
d_TopLevelGuardWellFormed_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TopLevelGuardWellFormed_3792 = erased
-- Ledger.Dijkstra.Specification.Utxow.TopLevelGuardWellFormed?
d_TopLevelGuardWellFormed'63'_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_TopLevelGuardWellFormed'63'_3804 v0 ~v1 v2 v3
  = du_TopLevelGuardWellFormed'63'_3804 v0 v2 v3
du_TopLevelGuardWellFormed'63'_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_TopLevelGuardWellFormed'63'_3804 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                    (coe
                       (\ v6 ->
                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                       (coe v0) (coe v3) (coe v1))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                       (coe
                          MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                             (coe
                                (\ v5 ->
                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                          (coe v3)))
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                       (coe
                          MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                             (coe
                                (\ v5 ->
                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3442
                          (coe v0) (coe v3) (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3812 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3812
  = C_SUBUTXOW_3946 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> Maybe AgdaAny
d_txAuxData_3818 ~v0 ~v1 v2 = du_txAuxData_3818 v2
du_txAuxData_3818 :: T_GeneralizeTel_86749 -> Maybe AgdaAny
du_txAuxData_3818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe d_'46'generalizedField'45'txSub_86741 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_3820 ~v0 ~v1 v2 = du_txBody_3820 v2
du_txBody_3820 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
du_txBody_3820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe d_'46'generalizedField'45'txSub_86741 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_3824 ~v0 ~v1 v2 = du_txWitnesses_3824 v2
du_txWitnesses_3824 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
du_txWitnesses_3824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe d_'46'generalizedField'45'txSub_86741 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3834 ~v0 ~v1 v2 = du_referenceInputs_3834 v2
du_referenceInputs_3834 ::
  T_GeneralizeTel_86749 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> Maybe AgdaAny
d_scriptIntegrityHash_3838 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3838 v2
du_scriptIntegrityHash_3838 ::
  T_GeneralizeTel_86749 -> Maybe AgdaAny
du_scriptIntegrityHash_3838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> Maybe AgdaAny
d_txADhash_3840 ~v0 ~v1 v2 = du_txADhash_3840 v2
du_txADhash_3840 :: T_GeneralizeTel_86749 -> Maybe AgdaAny
du_txADhash_3840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_txCerts_3844 ~v0 ~v1 v2 = du_txCerts_3844 v2
du_txCerts_3844 ::
  T_GeneralizeTel_86749 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
du_txCerts_3844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txId
d_txId_3858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> AgdaAny
d_txId_3858 ~v0 ~v1 v2 = du_txId_3858 v2
du_txId_3858 :: T_GeneralizeTel_86749 -> AgdaAny
du_txId_3858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3860 ~v0 ~v1 v2 = du_txIns_3860 v2
du_txIns_3860 ::
  T_GeneralizeTel_86749 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3864 ~v0 ~v1 v2 = du_txOuts_3864 v2
du_txOuts_3864 ::
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3872 ~v0 ~v1 v2 = du_txVldt_3872 v2
du_txVldt_3872 ::
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> [AgdaAny]
d_txData_3882 ~v0 ~v1 v2 = du_txData_3882 v2
du_txData_3882 :: T_GeneralizeTel_86749 -> [AgdaAny]
du_txData_3882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3884 ~v0 ~v1 v2 = du_txRedeemers_3884 v2
du_txRedeemers_3884 ::
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3886 ~v0 ~v1 v2 = du_vKeySigs_3886 v2
du_vKeySigs_3886 ::
  T_GeneralizeTel_86749 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_3886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txSub_86741 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3948 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOW'10632'__3948
  = C_UTXOW'45'normal_4090 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_UTXOW'45'legacy_4234 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> Maybe AgdaAny
d_txAuxData_3954 ~v0 ~v1 v2 = du_txAuxData_3954 v2
du_txAuxData_3954 :: T_GeneralizeTel_105023 -> Maybe AgdaAny
du_txAuxData_3954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe d_'46'generalizedField'45'txTop_105015 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_3956 ~v0 ~v1 v2 = du_txBody_3956 v2
du_txBody_3956 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
du_txBody_3956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe d_'46'generalizedField'45'txTop_105015 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_3960 ~v0 ~v1 v2 = du_txWitnesses_3960 v2
du_txWitnesses_3960 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
du_txWitnesses_3960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe d_'46'generalizedField'45'txTop_105015 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3970 ~v0 ~v1 v2 = du_referenceInputs_3970 v2
du_referenceInputs_3970 ::
  T_GeneralizeTel_105023 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> Maybe AgdaAny
d_scriptIntegrityHash_3974 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3974 v2
du_scriptIntegrityHash_3974 ::
  T_GeneralizeTel_105023 -> Maybe AgdaAny
du_scriptIntegrityHash_3974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> Maybe AgdaAny
d_txADhash_3976 ~v0 ~v1 v2 = du_txADhash_3976 v2
du_txADhash_3976 :: T_GeneralizeTel_105023 -> Maybe AgdaAny
du_txADhash_3976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_3980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_txCerts_3980 ~v0 ~v1 v2 = du_txCerts_3980 v2
du_txCerts_3980 ::
  T_GeneralizeTel_105023 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
du_txCerts_3980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3996 ~v0 ~v1 v2 = du_txIns_3996 v2
du_txIns_3996 ::
  T_GeneralizeTel_105023 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_4000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4000 ~v0 ~v1 v2 = du_txOuts_4000 v2
du_txOuts_4000 ::
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_4000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_4008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4008 ~v0 ~v1 v2 = du_txVldt_4008 v2
du_txVldt_4008 ::
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_4008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> [AgdaAny]
d_txData_4018 ~v0 ~v1 v2 = du_txData_4018 v2
du_txData_4018 :: T_GeneralizeTel_105023 -> [AgdaAny]
du_txData_4018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_4020 ~v0 ~v1 v2 = du_txRedeemers_4020 v2
du_txRedeemers_4020 ::
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_4020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_4022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_4022 ~v0 ~v1 v2 = du_vKeySigs_4022 v2
du_vKeySigs_4022 ::
  T_GeneralizeTel_105023 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_4022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_105015 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_4096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> Maybe AgdaAny
d_txAuxData_4096 ~v0 ~v1 v2 = du_txAuxData_4096 v2
du_txAuxData_4096 :: T_GeneralizeTel_124007 -> Maybe AgdaAny
du_txAuxData_4096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
      (coe d_'46'generalizedField'45'txTop_123999 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_4098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
d_txBody_4098 ~v0 ~v1 v2 = du_txBody_4098 v2
du_txBody_4098 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3834
du_txBody_4098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
      (coe d_'46'generalizedField'45'txTop_123999 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_4102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
d_txWitnesses_4102 ~v0 ~v1 v2 = du_txWitnesses_4102 v2
du_txWitnesses_4102 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3836
du_txWitnesses_4102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
      (coe d_'46'generalizedField'45'txTop_123999 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_4112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_4112 ~v0 ~v1 v2 = du_referenceInputs_4112 v2
du_referenceInputs_4112 ::
  T_GeneralizeTel_124007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_4112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_4116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> Maybe AgdaAny
d_scriptIntegrityHash_4116 ~v0 ~v1 v2
  = du_scriptIntegrityHash_4116 v2
du_scriptIntegrityHash_4116 ::
  T_GeneralizeTel_124007 -> Maybe AgdaAny
du_scriptIntegrityHash_4116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_4118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> Maybe AgdaAny
d_txADhash_4118 ~v0 ~v1 v2 = du_txADhash_4118 v2
du_txADhash_4118 :: T_GeneralizeTel_124007 -> Maybe AgdaAny
du_txADhash_4118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_4122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
d_txCerts_4122 ~v0 ~v1 v2 = du_txCerts_4122 v2
du_txCerts_4122 ::
  T_GeneralizeTel_124007 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1454]
du_txCerts_4122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_4138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4138 ~v0 ~v1 v2 = du_txIns_4138 v2
du_txIns_4138 ::
  T_GeneralizeTel_124007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_4138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_4142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4142 ~v0 ~v1 v2 = du_txOuts_4142 v2
du_txOuts_4142 ::
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_4142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_4150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4150 ~v0 ~v1 v2 = du_txVldt_4150 v2
du_txVldt_4150 ::
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_4150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_4160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> [AgdaAny]
d_txData_4160 ~v0 ~v1 v2 = du_txData_4160 v2
du_txData_4160 :: T_GeneralizeTel_124007 -> [AgdaAny]
du_txData_4160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_4162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_4162 ~v0 ~v1 v2 = du_txRedeemers_4162 v2
du_txRedeemers_4162 ::
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_4162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_4164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_4164 ~v0 ~v1 v2 = du_vKeySigs_4164 v2
du_vKeySigs_4164 ::
  T_GeneralizeTel_124007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_4164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
         (coe d_'46'generalizedField'45'txTop_123999 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-normal-premises
d_UTXOW'45'normal'45'premises_4236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'normal'45'premises_4236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3248
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  du_isLegacyMode_3752 (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                     (coe v3))
                  (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                   (coe v0))))
                          (coe v4)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_concatMap'737'_126
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_map_426
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                      (coe v4)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3944
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3804 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                      (coe v0)))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2728
                                   v0
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                         (coe v2))))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_426
                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                             (coe v0)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                          (coe v2)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                    (coe v2)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666)
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                               (coe v0)))
                                         v4)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_map_426
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v5 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                  (coe v3))
                                               (coe v2)))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0))))
                                      (coe v4)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_426
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                     (coe v0)))))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                  (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du__'8746'__708
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_426
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                             (coe v3))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1486)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                             (coe v2)))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_426
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
                                                  (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du__'65340'__758
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3496
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                   (coe v0))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du__'65340'__758
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                  erased
                                                  (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe v5)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3496
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                        (coe v3))
                                                     (coe v2)))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_map_426
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                        (coe v3)))))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_426
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
                                          (coe v2)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_426
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                  (coe v3)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))
                                             (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                              (coe v0))))))
                                               (coe v4)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_map_426
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                    (coe v0)))))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                                     v2))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                               MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                               MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v4))))
                                               (\ v5 ->
                                                  coe
                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                (coe v0))))
                                                       (coe v5)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                           (coe v0)))
                                                                     v6)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_426
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (\ v7 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v7))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                (coe v3)))))
                                                    (\ v6 ->
                                                       coe
                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                          (coe
                                             MAlonzo.Code.Class.IsSet.du_range_588
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                      (coe v2)))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v4 ->
                                                coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                 (coe v0))))))
                                                  (coe v4)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (\ v5 ->
                                                           coe
                                                             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                             MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                             erased
                                                             MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v5))))
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                           (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                              (coe v0))))
                                                                     (coe v6)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                           (\ v7 ->
                                                                              coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                         (coe v0)))
                                                                                   v7)
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_map_426
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (\ v8 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            v2)))))
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                              (coe v3)))))
                                                                  (\ v7 ->
                                                                     coe
                                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v5))))
                                                                       (coe
                                                                          MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_range_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                    erased
                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                    (coe v2))))))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                    (coe v2)))))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                    (coe v3))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                       (coe v2))))))))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_map_426
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                               (coe v0)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                                v2)))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                              (coe v0)))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                (coe
                                                                   MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v5))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                      (\ v6 ->
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                 (coe v0)))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                    (coe v0)))
                                                                              v6)
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_map_426
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (\ v7 ->
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                      (coe v7))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                       (coe v3))
                                                                                    (coe v2)))))
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Level.C_lift_20
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v5))))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))
                                                              (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                              (coe v0)))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                                 (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                        (coe
                                                           MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v4))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                              (\ v5 ->
                                                                 coe
                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                         (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                            (coe v0)))
                                                                      v5)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_map_426
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (\ v6 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                            (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                               (coe v3))
                                                                            (coe v2)))))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                 (coe v3))))
                                                        (coe
                                                           MAlonzo.Code.Level.C_lift_20
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                                (coe v0) (coe v1) (coe v2)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v4))))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                         (coe v3))
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                 (coe v0))))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du__'8745'__732
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                              erased
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                       (coe v0)))))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3238
                                                                    (coe v3))))
                                                           (coe
                                                              du_allowedLanguages_3718 (coe v0)
                                                              (coe v2)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))))))
                                                (coe
                                                   du_languages_3690 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                         (\ v4 ->
                                                            coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                       (coe v0)))
                                                                 v4)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_map_426
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (\ v5 ->
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v5))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                          (coe v3))
                                                                       (coe v2)))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                            (coe v3))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                               (coe v0))))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                         (coe v2)))
                                                   (coe
                                                      d_hashScriptIntegrity_3762 (coe v0) (coe v1)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3238
                                                         (coe v3))
                                                      (coe
                                                         du_languages_3690 (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                             (coe v0)))
                                                                       v4)
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_map_426
                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (\ v5 ->
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe v5))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                (coe v3))
                                                                             (coe v2)))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                  (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                            (coe v2)))))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-legacy-premises
d_UTXOW'45'legacy'45'premises_4238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'legacy'45'premises_4238 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3248
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  du_isLegacyMode_3752 (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                     (coe v3))
                  (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                   (coe v0))))
                          (coe v4)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_concatMap'737'_126
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_map_426
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                      (coe v4)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3944
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3804 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                      (coe v0)))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2728
                                   v0
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                         (coe v2))))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_426
                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                             (coe v0)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                          (coe v2)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                    (coe v2)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666)
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                               (coe v0)))
                                         v4)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_map_426
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v5 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                  (coe v3))
                                               (coe v2)))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0))))
                                      (coe v4)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_426
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                     (coe v0)))))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                  (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du__'8746'__708
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_426
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                             (coe v3))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1486)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                             (coe v2)))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_426
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
                                                  (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du__'65340'__758
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3496
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                   (coe v0))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du__'65340'__758
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                  erased
                                                  (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe v5)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3496
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                        (coe v3))
                                                     (coe v2)))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_map_426
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4738
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                        (coe v3)))))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_426
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4750
                                          (coe v2)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                  (coe v0)))
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_426
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                  (coe v3)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                (coe v3))
                                             (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                              (coe v0))))))
                                               (coe v4)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_map_426
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                    (coe v0)))))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                                     v2))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                               MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                               MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v4))))
                                               (\ v5 ->
                                                  coe
                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                (coe v0))))
                                                       (coe v5)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                           (coe v0)))
                                                                     v6)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_426
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (\ v7 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v7))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                (coe v3)))))
                                                    (\ v6 ->
                                                       coe
                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                          (coe
                                             MAlonzo.Code.Class.IsSet.du_range_588
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                      (coe v2)))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v4 ->
                                                coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                 (coe v0))))))
                                                  (coe v4)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (\ v5 ->
                                                           coe
                                                             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                             MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                             erased
                                                             MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v5))))
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                           (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                              (coe v0))))
                                                                     (coe v6)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                           (\ v7 ->
                                                                              coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                         (coe v0)))
                                                                                   v7)
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_map_426
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (\ v8 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            v2)))))
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                              (coe v3)))))
                                                                  (\ v7 ->
                                                                     coe
                                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v5))))
                                                                       (coe
                                                                          MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_range_588
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                    erased
                                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                    (coe v2))))))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                    (coe v2)))))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                       erased
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                    (coe v3))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                                       (coe v2))))))))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_map_426
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                               (coe v0)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                                v2)))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                              (coe v0)))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                (coe
                                                                   MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v5))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                      (\ v6 ->
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                                 (coe v0)))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                    (coe v0)))
                                                                              v6)
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_map_426
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (\ v7 ->
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                      (coe v7))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                       (coe v3))
                                                                                    (coe v2)))))
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Level.C_lift_20
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v5))))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))
                                                              (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           () erased () erased
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                              (coe v0)))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                                 (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                        (coe
                                                           MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                           (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v4))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                              (\ v5 ->
                                                                 coe
                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                         (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                            (coe v0)))
                                                                      v5)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_map_426
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (\ v6 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                            (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                               (coe v3))
                                                                            (coe v2)))))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                 (coe v3))))
                                                        (coe
                                                           MAlonzo.Code.Level.C_lift_20
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                                (coe v0) (coe v1) (coe v2)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v4))))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                         (coe v3))
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v4 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                 (coe v0))))
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du__'8745'__732
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                              erased
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                       (coe v0)))))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3238
                                                                    (coe v3))))
                                                           (coe
                                                              du_allowedLanguagesLegacy_3694
                                                              (coe v0) (coe v2)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                 (coe v3))))))
                                                (coe
                                                   du_languages_3690 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                         (\ v4 ->
                                                            coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                       (coe v0)))
                                                                 v4)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_map_426
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (\ v5 ->
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v5))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                          (coe v3))
                                                                       (coe v2)))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                            (coe v3))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v4 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                                              (coe
                                                                 (\ v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0)))
                                                                            v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0)))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                         (coe
                                                                            (\ v6 ->
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428
                                                                            (coe v4)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3452
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                    (coe v3))
                                                                 (coe v4)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                                              (coe
                                                                 (\ v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0)))
                                                                            v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                  (coe v0)))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                            (coe
                                                                               (\ v6 ->
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                            (coe
                                                                               (\ v6 ->
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4680
                                                                               (coe v4))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3452
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                    (coe v3))
                                                                 (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                               erased
                                                               MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                               erased
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                  (coe v0))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4214
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4610)
                                                            v2))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                                  (coe v0))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
                                                            (coe v2))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                            (coe v2)))
                                                      (coe
                                                         d_hashScriptIntegrity_3762 (coe v0)
                                                         (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3238
                                                            (coe v3))
                                                         (coe
                                                            du_languages_3690 (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                  (\ v4 ->
                                                                     coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                (coe v0)))
                                                                          v4)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_map_426
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (\ v5 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v5))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3242
                                                                                   (coe v3))
                                                                                (coe v2)))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3246
                                                                     (coe v3)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                               (coe v2))))))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.SUBUTXOW-premises
d_SUBUTXOW'45'premises_4240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3244 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXOW'45'premises_4240 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                             (coe v0)))
                       v4)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                   (coe v0))))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_604
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                (coe v0)))
                          v4)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                   (coe v3))
                                (coe v2)))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                     (coe v3)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                             (coe v0)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2728
                          v0
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3918
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                (coe v2))))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                 (coe v2)))))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3946
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v2)))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3926
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666)
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                      (coe v0)))
                                v4)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                         (coe v3))
                                      (coe v2)))))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3804 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3948
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                         (coe v0))))
                                (coe v4)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                               (coe v0)))))
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3968
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                            (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'8746'__708
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_426
                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                       (coe v3))
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1486)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3920
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                       (coe v2)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                         (coe v0)))
                                   (coe v4)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                         (coe v3)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_426
                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                       (coe v3))
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                     (coe v0))))))
                                      (coe v4)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_426
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                           (coe v0)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                            v2))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                      MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                                      (\ v5 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                           (coe
                                              MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                       (coe v0))))
                                              (coe v5)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                    (\ v6 ->
                                                       coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                  (coe v0)))
                                                            v6)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_map_426
                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (\ v7 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v7))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                     (coe v3))
                                                                  (coe v2)))))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                       (coe v3)))))
                                           (\ v6 ->
                                              coe
                                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe v4))))
                                                (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_588
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (coe
                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                             (coe v2)))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v4 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))))
                                         (coe v4)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8746'__708
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (\ v5 ->
                                                  coe
                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                    MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v5))))
                                                    (\ v6 ->
                                                       coe
                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                         erased
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                     (coe v0))))
                                                            (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                  (\ v7 ->
                                                                     coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                                (coe v0)))
                                                                          v7)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_map_426
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (\ v8 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v8))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                                   (coe v3))
                                                                                (coe v2)))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                                     (coe v3)))))
                                                         (\ v7 ->
                                                            coe
                                                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                              MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                              erased
                                                              MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                              erased
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v5))))
                                                              (coe
                                                                 MAlonzo.Code.Data.Sum.du_isInj'8322'_30))))
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_range_588
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                           MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                           erased
                                                           MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                           erased
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                              (coe v0))
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3910
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                           (coe v2))))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du__'8746'__708
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3916
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                           (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3428)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                              erased
                                                              MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                              erased
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                                                                 (coe v0))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3912
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                              (coe v2))))))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_426
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                      (coe v0)))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4334
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4654)
                                       v2)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                  erased () erased
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                     (coe v0)))
                                               (coe v4)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                       (coe
                                                          MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v5))
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                             (\ v6 ->
                                                                coe
                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                           (coe v0)))
                                                                     v6)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_426
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (\ v7 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v7))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                                (coe v3))))
                                                       (coe
                                                          MAlonzo.Code.Level.C_lift_20
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                               (coe v0) (coe v1) (coe v2)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v5))))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                        (coe v3))
                                                     (coe v2)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                  erased () erased
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                                                     (coe v0)))
                                               (coe v4)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                        (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                               (coe
                                                  MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3432
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v4))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                     (\ v5 ->
                                                        coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                   (coe v0)))
                                                             v5)
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_map_426
                                                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (\ v6 ->
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v6))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                      (coe v3))
                                                                   (coe v2)))))
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                        (coe v3))))
                                               (coe
                                                  MAlonzo.Code.Level.C_lift_20
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3288
                                                       (coe v0) (coe v1) (coe v2)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v4))))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                (coe v3))
                                             (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                        (coe v0))))
                                               (coe v4)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du__'8745'__732
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3268
                                                           (coe v3))))
                                                  (coe
                                                     du_allowedLanguages_3718 (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                        (coe v3))))))
                                       (coe
                                          du_languages_3690 (coe v0)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                (\ v4 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                              (coe v0)))
                                                        v4)
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                        (MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_map_426
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (\ v5 ->
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                 (coe v3))
                                                              (coe v2)))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                   (coe v3))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3928
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1402
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3858
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3942
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3850
                                                (coe v2)))
                                          (coe
                                             d_hashScriptIntegrity_3762 (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3268
                                                (coe v3))
                                             (coe
                                                du_languages_3690 (coe v0)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                      (\ v4 ->
                                                         coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                    (coe v0)))
                                                              v4)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_map_426
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (\ v5 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v5))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3458
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3272
                                                                       (coe v3))
                                                                    (coe v2)))))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3274
                                                         (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3974
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3972
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3852
                                                   (coe v2))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txSub
d_'46'generalizedField'45'txSub_86741 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
d_'46'generalizedField'45'txSub_86741 v0
  = case coe v0 of
      C_mkGeneralizeTel_86751 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_86743 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252
d_'46'generalizedField'45'Γ_86743 v0
  = case coe v0 of
      C_mkGeneralizeTel_86751 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₀
d_'46'generalizedField'45's'8320'_86745 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's'8320'_86745 v0
  = case coe v0 of
      C_mkGeneralizeTel_86751 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₁
d_'46'generalizedField'45's'8321'_86747 ::
  T_GeneralizeTel_86749 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's'8321'_86747 v0
  = case coe v0 of
      C_mkGeneralizeTel_86751 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_86749 a0 a1 = ()
data T_GeneralizeTel_86749
  = C_mkGeneralizeTel_86751 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3252
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_105015 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
d_'46'generalizedField'45'txTop_105015 v0
  = case coe v0 of
      C_mkGeneralizeTel_105025 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_105017 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220
d_'46'generalizedField'45'Γ_105017 v0
  = case coe v0 of
      C_mkGeneralizeTel_105025 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_105019 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's_105019 v0
  = case coe v0 of
      C_mkGeneralizeTel_105025 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_105021 ::
  T_GeneralizeTel_105023 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's''_105021 v0
  = case coe v0 of
      C_mkGeneralizeTel_105025 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_105023 a0 a1 = ()
data T_GeneralizeTel_105023
  = C_mkGeneralizeTel_105025 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_123999 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
d_'46'generalizedField'45'txTop_123999 v0
  = case coe v0 of
      C_mkGeneralizeTel_124009 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_124001 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220
d_'46'generalizedField'45'Γ_124001 v0
  = case coe v0 of
      C_mkGeneralizeTel_124009 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_124003 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's_124003 v0
  = case coe v0 of
      C_mkGeneralizeTel_124009 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_124005 ::
  T_GeneralizeTel_124007 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
d_'46'generalizedField'45's''_124005 v0
  = case coe v0 of
      C_mkGeneralizeTel_124009 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_124007 a0 a1 = ()
data T_GeneralizeTel_124007
  = C_mkGeneralizeTel_124009 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3830
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3220
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3280
