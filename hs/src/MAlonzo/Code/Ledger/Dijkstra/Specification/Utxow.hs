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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
d_HasData'45'Tx_358 ~v0 = du_HasData'45'Tx_358
du_HasData'45'Tx_358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
du_HasData'45'Tx_358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662
-- _.HasGuards-Tx
d_HasGuards'45'Tx_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
d_HasGuards'45'Tx_426 ~v0 = du_HasGuards'45'Tx_426
du_HasGuards'45'Tx_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
du_HasGuards'45'Tx_426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4666
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
d_HasSpendInputs'45'Tx_540 ~v0 = du_HasSpendInputs'45'Tx_540
du_HasSpendInputs'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
du_HasSpendInputs'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112
d_HasSubTransactions'45'TopLevelTx_556 ~v0
  = du_HasSubTransactions'45'TopLevelTx_556
du_HasSubTransactions'45'TopLevelTx_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112
du_HasSubTransactions'45'TopLevelTx_556
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4586
-- _.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
d_HasTopLevelGuards'45'Tx_562 ~v0 = du_HasTopLevelGuards'45'Tx_562
du_HasTopLevelGuards'45'Tx_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
du_HasTopLevelGuards'45'Tx_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4590
-- _.HasTxId-Tx
d_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
d_HasTxId'45'Tx_584 ~v0 = du_HasTxId'45'Tx_584
du_HasTxId'45'Tx_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
du_HasTxId'45'Tx_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4652
-- _.Hashable-Script
d_Hashable'45'Script_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
d_P1Script_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_724 = erased
-- _.PlutusScript
d_PlutusScript_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_730 = erased
-- _.PParams
d_PParams_734 a0 = ()
-- _.PlutusV4
d_PlutusV4_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_758 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- _.Redeemer
d_Redeemer_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_780 = erased
-- _.RedeemerPtr
d_RedeemerPtr_782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_782 = erased
-- _.Script
d_Script_816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_816 = erased
-- _.ScriptHash
d_ScriptHash_824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_824 = erased
-- _.SubLevelTx
d_SubLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_896 = erased
-- _.TopLevelTx
d_TopLevelTx_916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_916 = erased
-- _.Tx
d_Tx_922 a0 a1 = ()
-- _.TxOut
d_TxOut_940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_940 = erased
-- _.UTxO
d_UTxO_950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_950 = erased
-- _.allReferenceScripts
d_allReferenceScripts_1014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
      (coe v0)
-- _.allWitnessScripts
d_allWitnessScripts_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1020 ~v0 = du_allWitnessScripts_1020
du_allWitnessScripts_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_1020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
-- _.isKeyHashObj
d_isKeyHashObj_1094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1094 ~v0 = du_isKeyHashObj_1094
du_isKeyHashObj_1094 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1094
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1114 ~v0 = du_isScriptObj_1114
du_isScriptObj_1114 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1114
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1118 = erased
-- _.language
d_language_1128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_1128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v0)))
-- _.payCred
d_payCred_1150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1150 ~v0 = du_payCred_1150
du_payCred_1150 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1150
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- _.toP1Script
d_toP1Script_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1200 ~v0 = du_toP1Script_1200
du_toP1Script_1200 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1200
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- _.toP2Script
d_toP2Script_1202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1202 ~v0 = du_toP2Script_1202
du_toP2Script_1202 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1202
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- _.validP1Script
d_validP1Script_1226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1226 = erased
-- _.PParams.Emax
d_Emax_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- _.PParams.a
d_a_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- _.PParams.a0
d_a0_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- _.PParams.b
d_b_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- _.PParams.costmdls
d_costmdls_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
         (coe v0))
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- _.PParams.nopt
d_nopt_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- _.PParams.prices
d_prices_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- _.PParams.pv
d_pv_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- _.Tx.isValid
d_isValid_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  AgdaAny
d_isValid_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3864
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Maybe AgdaAny
d_txAuxData_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
      (coe v0)
-- _.Tx.txBody
d_txBody_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_txBody_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
      (coe v0)
-- _.Tx.txSize
d_txSize_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Integer
d_txSize_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3862
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_txWitnesses_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.IsConwayCert
d_IsConwayCert_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 -> ()
d_IsConwayCert_2884 = erased
-- Ledger.Dijkstra.Specification.Utxow._.poolOwners
d_poolOwners_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  [AgdaAny]
d_poolOwners_2962 ~v0 ~v1 = du_poolOwners_2962
du_poolOwners_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  [AgdaAny]
du_poolOwners_2962
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1494
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3186 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3190 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._.HasLegacyMode-UTxOEnv
d_HasLegacyMode'45'UTxOEnv_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasLegacyMode_3348
d_HasLegacyMode'45'UTxOEnv_3224 ~v0 ~v1
  = du_HasLegacyMode'45'UTxOEnv_3224
du_HasLegacyMode'45'UTxOEnv_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasLegacyMode_3348
du_HasLegacyMode'45'UTxOEnv_3224
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasLegacyMode'45'UTxOEnv_3434
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'SubUTxOEnv_3226 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3226
du_HasPParams'45'SubUTxOEnv_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'SubUTxOEnv_3226
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'SubUTxOEnv_3438
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'UTxOEnv_3228 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3228
du_HasPParams'45'UTxOEnv_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'UTxOEnv_3228
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'UTxOEnv_3426
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3368
d_HasScriptPool'45'SubUTxOEnv_3236 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3236
du_HasScriptPool'45'SubUTxOEnv_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3368
du_HasScriptPool'45'SubUTxOEnv_3236
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'SubUTxOEnv_3446
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3368
d_HasScriptPool'45'UTxOEnv_3238 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3238
du_HasScriptPool'45'UTxOEnv_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3368
du_HasScriptPool'45'UTxOEnv_3238
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'UTxOEnv_3432
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820
d_HasUTxO'45'SubUTxOEnv_3252 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3252
du_HasUTxO'45'SubUTxOEnv_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820
du_HasUTxO'45'SubUTxOEnv_3252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'SubUTxOEnv_3442
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820
d_HasUTxO'45'UTxOEnv_3254 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3254
du_HasUTxO'45'UTxOEnv_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820
du_HasUTxO'45'UTxOEnv_3254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOEnv_3430
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv
d_SubUTxOEnv_3274 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv
d_UTxOEnv_3286 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState
d_UTxOState_3290 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.allScripts
d_allScripts_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  Bool
d_isTopLevelValid_3390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3284
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.pparams
d_pparams_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3276
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.slot
d_slot_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  AgdaAny
d_slot_3394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3274
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.treasury
d_treasury_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  Integer
d_treasury_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3278
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.utxo₀
d_utxo'8320'_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.allScripts
d_allScripts_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.legacyMode
d_legacyMode_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  Bool
d_legacyMode_3404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3256
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.pools₀
d_pools'8320'_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_3406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3252
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.pparams
d_pparams_3408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3246
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.slot
d_slot_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  AgdaAny
d_slot_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3244
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.treasury
d_treasury_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  Integer
d_treasury_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3248
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.utxo₀
d_utxo'8320'_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.donations
d_donations_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288 ->
  Integer
d_donations_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3300
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.fees
d_fees_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288 ->
  Integer
d_fees_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3298
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.utxo
d_utxo_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3296
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.allCredsNeeded
d_allCredsNeeded_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_3436 v0 ~v1 = du_allCredsNeeded_3436 v0
du_allCredsNeeded_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allCredsNeeded_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3508
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credentialToP2Script
d_credentialToP2Script_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
d_credentialToP2Script_3442 v0 ~v1
  = du_credentialToP2Script_3442 v0
du_credentialToP2Script_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
du_credentialToP2Script_3442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credsNeeded
d_credsNeeded_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_3444 v0 ~v1 = du_credsNeeded_3444 v0
du_credsNeeded_3444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_3444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.rdptr
d_rdptr_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3168 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_3452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
      (coe v0) (coe v1) v3 v4
-- Ledger.Dijkstra.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_3458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_3458 ~v0 ~v1 = du_txOutToDataHash_3458
du_txOutToDataHash_3458 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_3458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440
-- Ledger.Dijkstra.Specification.Utxow.UsesBootstrapAddress
d_UsesBootstrapAddress_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  ()
d_UsesBootstrapAddress_3480 = erased
-- Ledger.Dijkstra.Specification.Utxow.HasInlineDatum
d_HasInlineDatum_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_HasInlineDatum_3554 = erased
-- Ledger.Dijkstra.Specification.Utxow.HasDataHash
d_HasDataHash_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_HasDataHash_3558 = erased
-- Ledger.Dijkstra.Specification.Utxow._._.UsesV2Features
d_UsesV2Features_3574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_UsesV2Features_3574 = erased
-- Ledger.Dijkstra.Specification.Utxow._.UsesV3Features
d_UsesV3Features_3578 a0 a1 a2 = ()
data T_UsesV3Features_3578
  = C_hasVotes_3580 | C_hasProposals_3582 |
    C_hasDonation_3584 MAlonzo.Code.Data.Nat.Base.T_NonZero_112 |
    C_hasTreasure_3586 MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 |
    C_hasConwayCerts_3588 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Dijkstra.Specification.Utxow._.UsesV4Features
d_UsesV4Features_3590 a0 a1 a2 = ()
data T_UsesV4Features_3590
  = C_hasScriptGuards_3594 | C_hasDirectDeposits_3596 |
    C_hasBalanceIntervals_3598 | C_hasStartingBalanceIntervals_3600
-- Ledger.Dijkstra.Specification.Utxow._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_3608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_3608 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_3608 v2
du_Dec'45'UsesV3Features_3608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_3608 v0
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3940
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3942
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3938
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3946
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                   (coe v0)))) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1638))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                                               C_hasConwayCerts_3588
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
                                                                              C_hasTreasure_3586
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
                                                                      C_hasDonation_3584 (coe v9)))
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
                                                           (coe C_hasProposals_3582))
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
                                                                                             C_hasConwayCerts_3588
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
                                                                                        C_hasTreasure_3586
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
                                                                                C_hasDonation_3584
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
                                                                     (coe C_hasProposals_3582))
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
                                                      (coe C_hasVotes_3580))
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
                                                                                                C_hasConwayCerts_3588
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
                                                                                           C_hasTreasure_3586
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
                                                                                   C_hasDonation_3584
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
                                                                                                          C_hasConwayCerts_3588
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
                                                                                                     C_hasTreasure_3586
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
                                                                                             C_hasDonation_3584
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
                                                                              C_hasProposals_3582))
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
                                                                                                             C_hasConwayCerts_3588
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
                                                                                                        C_hasTreasure_3586
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
                                                                                                                       C_hasConwayCerts_3588
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
                                                                                                                  C_hasTreasure_3586
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
                                                                                                   C_hasDonation_3584
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
                                                                                                                          C_hasConwayCerts_3588
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
                                                                                                                                    C_hasConwayCerts_3588
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
                                                                                                                        C_hasTreasure_3586
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
                                                                                                                                       C_hasConwayCerts_3588
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
d_Dec'45'UsesV4Features_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV4Features_3664 ~v0 ~v1 v2
  = du_Dec'45'UsesV4Features_3664 v2
du_Dec'45'UsesV4Features_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV4Features_3664 v0
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3958
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3960
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3962
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                                C_hasStartingBalanceIntervals_3600))))
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
                                                                (coe C_hasBalanceIntervals_3598))
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
                                                        (coe C_hasDirectDeposits_3596))
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
                                                                                  C_hasStartingBalanceIntervals_3600))
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
                                                                             C_hasBalanceIntervals_3598))
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
                                                                  (coe C_hasDirectDeposits_3596))
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
                                                   (coe C_hasScriptGuards_3594))
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
                                                                                     C_hasStartingBalanceIntervals_3600))
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
                                                                                C_hasBalanceIntervals_3598))
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
                                                                                               C_hasStartingBalanceIntervals_3600))
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
                                                                                          C_hasBalanceIntervals_3598))
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
                                                                           C_hasDirectDeposits_3596))
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
                                                                                                  C_hasStartingBalanceIntervals_3600))
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
                                                                                                            C_hasStartingBalanceIntervals_3600))
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
                                                                                                C_hasBalanceIntervals_3598))
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
                                                                                                               C_hasStartingBalanceIntervals_3600))
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
d_languages_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  [AgdaAny] -> [AgdaAny]
d_languages_3698 v0 ~v1 v2 = du_languages_3698 v0 v2
du_languages_3698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> [AgdaAny]
du_languages_3698 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v0))))
      v1
-- Ledger.Dijkstra.Specification.Utxow.allowedLanguagesLegacy
d_allowedLanguagesLegacy_3702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguagesLegacy_3702 v0 ~v1 v2 v3
  = du_allowedLanguagesLegacy_3702 v0 v2 v3
du_allowedLanguagesLegacy_3702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguagesLegacy_3702 v0 v1 v2
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
                  (coe du_os_3712 (coe v0) (coe v1) (coe v2)))
               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
                     v1)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622)
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                     (coe du_os_3712 (coe v0) (coe v1) (coe v2)))
                  (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe du_Dec'45'UsesV4Features_3664 (coe v1))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                              (coe v0))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
                           v1)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622)
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                        (coe du_os_3712 (coe v0) (coe v1) (coe v2)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV4Features_3664 (coe v1))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV3Features_3608 (coe v1))
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                        (coe du_os_3712 (coe v0) (coe v1) (coe v2)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                        (coe du_Dec'45'UsesV4Features_3664 (coe v1))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe du_Dec'45'UsesV3Features_3608 (coe v1))
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
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4688
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
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4442
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4674)
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                (coe v0))))
                                       (coe v2)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du__'8746'__708
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
                                             v1)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622)
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
d_os_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_3712 v0 ~v1 v2 v3 = du_os_3712 v0 v2 v3
du_os_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_3712 v0 v1 v2
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4442
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4674)
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622)
                  v1))))
-- Ledger.Dijkstra.Specification.Utxow._.usesBootstrapAddr
d_usesBootstrapAddr_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesBootstrapAddr_3714 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV4Features
d_usesV4Features_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV4Features_3720 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV3Features
d_usesV3Features_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV3Features_3722 = erased
-- Ledger.Dijkstra.Specification.Utxow._.usesV2Features
d_usesV2Features_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV2Features_3724 = erased
-- Ledger.Dijkstra.Specification.Utxow.allowedLanguages
d_allowedLanguages_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_3726 v0 ~v1 ~v2 v3 v4
  = du_allowedLanguages_3726 v0 v3 v4
du_allowedLanguages_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_3726 v0 v1 v2
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                 (coe v0))))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'8746'__708
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                 (coe v1)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                 (coe v1))))))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                     (coe v0))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622)
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
d_TxOutSpendable'45'PlutusV1'45'V2_3732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV1'45'V2_3732 = erased
-- Ledger.Dijkstra.Specification.Utxow.neededP2Scripts
d_neededP2Scripts_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [AgdaAny]
d_neededP2Scripts_3742 v0 ~v1 v2 v3 v4 v5
  = du_neededP2Scripts_3742 v0 v2 v3 v4 v5
du_neededP2Scripts_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [AgdaAny]
du_neededP2Scripts_3742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)
      (coe
         du_scriptsNeeded_3756 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Dijkstra.Specification.Utxow._.scriptHashesNeeded
d_scriptHashesNeeded_3754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [AgdaAny]
d_scriptHashesNeeded_3754 v0 ~v1 v2 v3 ~v4 v5
  = du_scriptHashesNeeded_3754 v0 v2 v3 v5
du_scriptHashesNeeded_3754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [AgdaAny]
du_scriptHashesNeeded_3754 v0 v1 v2 v3
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
            (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptsNeeded
d_scriptsNeeded_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsNeeded_3756 v0 ~v1 v2 v3 v4 v5
  = du_scriptsNeeded_3756 v0 v2 v3 v4 v5
du_scriptsNeeded_3756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsNeeded_3756 v0 v1 v2 v3 v4
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
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                    (coe v0))))
           (coe
              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                    (coe v0)))
              v5)
           (coe
              MAlonzo.Code.Class.IsSet.d_toSet_526
              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
              (coe
                 du_scriptHashesNeeded_3754 (coe v0) (coe v1) (coe v2) (coe v4))))
      v3
-- Ledger.Dijkstra.Specification.Utxow.isLegacyMode
d_isLegacyMode_3760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Bool
d_isLegacyMode_3760 v0 ~v1 v2 v3 v4
  = du_isLegacyMode_3760 v0 v2 v3 v4
du_isLegacyMode_3760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Bool
du_isLegacyMode_3760 v0 v1 v2 v3
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                            (coe v0))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe
            du_neededP2Scripts_3742 (coe v0)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
            (coe v1) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Utxow.hashScriptIntegrity
d_hashScriptIntegrity_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_3770 v0 v1 v2 v3 v4 v5
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
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                      (coe v0))))))
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2738
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3284
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
d_TopLevelGuardWellFormed_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TopLevelGuardWellFormed_3800 = erased
-- Ledger.Dijkstra.Specification.Utxow.TopLevelGuardWellFormed?
d_TopLevelGuardWellFormed'63'_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_TopLevelGuardWellFormed'63'_3812 v0 ~v1 v2 v3
  = du_TopLevelGuardWellFormed'63'_3812 v0 v2 v3
du_TopLevelGuardWellFormed'63'_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_TopLevelGuardWellFormed'63'_3812 v0 v1 v2
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3454
                          (coe v0) (coe v3) (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3820 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3820
  = C_SUBUTXOW_3954 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> Maybe AgdaAny
d_txAuxData_3826 ~v0 ~v1 v2 = du_txAuxData_3826 v2
du_txAuxData_3826 :: T_GeneralizeTel_86753 -> Maybe AgdaAny
du_txAuxData_3826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
      (coe d_'46'generalizedField'45'txSub_86745 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_txBody_3828 ~v0 ~v1 v2 = du_txBody_3828 v2
du_txBody_3828 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
du_txBody_3828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
      (coe d_'46'generalizedField'45'txSub_86745 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_txWitnesses_3832 ~v0 ~v1 v2 = du_txWitnesses_3832 v2
du_txWitnesses_3832 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
du_txWitnesses_3832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
      (coe d_'46'generalizedField'45'txSub_86745 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3842 ~v0 ~v1 v2 = du_referenceInputs_3842 v2
du_referenceInputs_3842 ::
  T_GeneralizeTel_86753 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> Maybe AgdaAny
d_scriptIntegrityHash_3846 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3846 v2
du_scriptIntegrityHash_3846 ::
  T_GeneralizeTel_86753 -> Maybe AgdaAny
du_scriptIntegrityHash_3846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> Maybe AgdaAny
d_txADhash_3848 ~v0 ~v1 v2 = du_txADhash_3848 v2
du_txADhash_3848 :: T_GeneralizeTel_86753 -> Maybe AgdaAny
du_txADhash_3848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_txCerts_3852 ~v0 ~v1 v2 = du_txCerts_3852 v2
du_txCerts_3852 ::
  T_GeneralizeTel_86753 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
du_txCerts_3852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txId
d_txId_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> AgdaAny
d_txId_3866 ~v0 ~v1 v2 = du_txId_3866 v2
du_txId_3866 :: T_GeneralizeTel_86753 -> AgdaAny
du_txId_3866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3926
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3868 ~v0 ~v1 v2 = du_txIns_3868 v2
du_txIns_3868 ::
  T_GeneralizeTel_86753 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3872 ~v0 ~v1 v2 = du_txOuts_3872 v2
du_txOuts_3872 ::
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3880 ~v0 ~v1 v2 = du_txVldt_3880 v2
du_txVldt_3880 ::
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_3890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> [AgdaAny]
d_txData_3890 ~v0 ~v1 v2 = du_txData_3890 v2
du_txData_3890 :: T_GeneralizeTel_86753 -> [AgdaAny]
du_txData_3890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_3892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3892 ~v0 ~v1 v2 = du_txRedeemers_3892 v2
du_txRedeemers_3892 ::
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_3892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_3894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3894 ~v0 ~v1 v2 = du_vKeySigs_3894 v2
du_vKeySigs_3894 ::
  T_GeneralizeTel_86753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_3894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txSub_86745 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3956 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOW'10632'__3956
  = C_UTXOW'45'normal_4098 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_UTXOW'45'legacy_4242 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> Maybe AgdaAny
d_txAuxData_3962 ~v0 ~v1 v2 = du_txAuxData_3962 v2
du_txAuxData_3962 :: T_GeneralizeTel_105027 -> Maybe AgdaAny
du_txAuxData_3962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
      (coe d_'46'generalizedField'45'txTop_105019 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_txBody_3964 ~v0 ~v1 v2 = du_txBody_3964 v2
du_txBody_3964 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
du_txBody_3964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
      (coe d_'46'generalizedField'45'txTop_105019 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_txWitnesses_3968 ~v0 ~v1 v2 = du_txWitnesses_3968 v2
du_txWitnesses_3968 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
du_txWitnesses_3968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
      (coe d_'46'generalizedField'45'txTop_105019 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3978 ~v0 ~v1 v2 = du_referenceInputs_3978 v2
du_referenceInputs_3978 ::
  T_GeneralizeTel_105027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> Maybe AgdaAny
d_scriptIntegrityHash_3982 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3982 v2
du_scriptIntegrityHash_3982 ::
  T_GeneralizeTel_105027 -> Maybe AgdaAny
du_scriptIntegrityHash_3982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> Maybe AgdaAny
d_txADhash_3984 ~v0 ~v1 v2 = du_txADhash_3984 v2
du_txADhash_3984 :: T_GeneralizeTel_105027 -> Maybe AgdaAny
du_txADhash_3984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_txCerts_3988 ~v0 ~v1 v2 = du_txCerts_3988 v2
du_txCerts_3988 ::
  T_GeneralizeTel_105027 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
du_txCerts_3988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_4004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4004 ~v0 ~v1 v2 = du_txIns_4004 v2
du_txIns_4004 ::
  T_GeneralizeTel_105027 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_4004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_4008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4008 ~v0 ~v1 v2 = du_txOuts_4008 v2
du_txOuts_4008 ::
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_4008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4016 ~v0 ~v1 v2 = du_txVldt_4016 v2
du_txVldt_4016 ::
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_4016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_4026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> [AgdaAny]
d_txData_4026 ~v0 ~v1 v2 = du_txData_4026 v2
du_txData_4026 :: T_GeneralizeTel_105027 -> [AgdaAny]
du_txData_4026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_4028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_4028 ~v0 ~v1 v2 = du_txRedeemers_4028 v2
du_txRedeemers_4028 ::
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_4028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_4030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_4030 ~v0 ~v1 v2 = du_vKeySigs_4030 v2
du_vKeySigs_4030 ::
  T_GeneralizeTel_105027 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_4030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_105019 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> Maybe AgdaAny
d_txAuxData_4104 ~v0 ~v1 v2 = du_txAuxData_4104 v2
du_txAuxData_4104 :: T_GeneralizeTel_124011 -> Maybe AgdaAny
du_txAuxData_4104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
      (coe d_'46'generalizedField'45'txTop_124003 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_4106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_txBody_4106 ~v0 ~v1 v2 = du_txBody_4106 v2
du_txBody_4106 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
du_txBody_4106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
      (coe d_'46'generalizedField'45'txTop_124003 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_txWitnesses_4110 ~v0 ~v1 v2 = du_txWitnesses_4110 v2
du_txWitnesses_4110 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
du_txWitnesses_4110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
      (coe d_'46'generalizedField'45'txTop_124003 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_4120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_4120 ~v0 ~v1 v2 = du_referenceInputs_4120 v2
du_referenceInputs_4120 ::
  T_GeneralizeTel_124011 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_4120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_4124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> Maybe AgdaAny
d_scriptIntegrityHash_4124 ~v0 ~v1 v2
  = du_scriptIntegrityHash_4124 v2
du_scriptIntegrityHash_4124 ::
  T_GeneralizeTel_124011 -> Maybe AgdaAny
du_scriptIntegrityHash_4124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_4126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> Maybe AgdaAny
d_txADhash_4126 ~v0 ~v1 v2 = du_txADhash_4126 v2
du_txADhash_4126 :: T_GeneralizeTel_124011 -> Maybe AgdaAny
du_txADhash_4126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txCerts
d_txCerts_4130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_txCerts_4130 ~v0 ~v1 v2 = du_txCerts_4130 v2
du_txCerts_4130 ::
  T_GeneralizeTel_124011 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
du_txCerts_4130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_4146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4146 ~v0 ~v1 v2 = du_txIns_4146 v2
du_txIns_4146 ::
  T_GeneralizeTel_124011 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_4146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_4150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4150 ~v0 ~v1 v2 = du_txOuts_4150 v2
du_txOuts_4150 ::
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_4150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_4158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4158 ~v0 ~v1 v2 = du_txVldt_4158 v2
du_txVldt_4158 ::
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_4158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_4168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> [AgdaAny]
d_txData_4168 ~v0 ~v1 v2 = du_txData_4168 v2
du_txData_4168 :: T_GeneralizeTel_124011 -> [AgdaAny]
du_txData_4168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_4170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_4170 ~v0 ~v1 v2 = du_txRedeemers_4170 v2
du_txRedeemers_4170 ::
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_4170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_4172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_4172 ~v0 ~v1 v2 = du_vKeySigs_4172 v2
du_vKeySigs_4172 ::
  T_GeneralizeTel_124011 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_4172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
         (coe d_'46'generalizedField'45'txTop_124003 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-normal-premises
d_UTXOW'45'normal'45'premises_4244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'normal'45'premises_4244 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3256
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  du_isLegacyMode_3760 (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                   (coe v0))))
                          (coe v4)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                      (coe v4)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3952
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3812 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                      (coe v0)))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2736
                                   v0
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3926
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                         (coe v2))))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                             (coe v0)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                          (coe v2)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                    (coe v2)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                  (coe v3))
                                               (coe v2)))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                     (coe v0)))))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                             (coe v3))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1494)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3508
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                   (coe v0))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3508
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                        (coe v0))))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                    (coe v0)))))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                           (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            v2)))))
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                                    (coe v2)))))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
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
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                    (coe v3))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                               (coe v0)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                                 (coe v0)))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                       (coe v3))
                                                                                    (coe v2)))))
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Level.C_lift_20
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v5))))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                         (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                            (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                               (coe v3))
                                                                            (coe v2)))))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                 (coe v3))))
                                                        (coe
                                                           MAlonzo.Code.Level.C_lift_20
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                                (coe v0) (coe v1) (coe v2)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v4))))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3246
                                                                    (coe v3))))
                                                           (coe
                                                              du_allowedLanguages_3726 (coe v0)
                                                              (coe v2)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                 (coe v3))))))
                                                (coe
                                                   du_languages_3698 (coe v0)
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                          (coe v3))
                                                                       (coe v2)))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                               (coe v0))))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                         (coe v2)))
                                                   (coe
                                                      d_hashScriptIntegrity_3770 (coe v0) (coe v1)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3246
                                                         (coe v3))
                                                      (coe
                                                         du_languages_3698 (coe v0)
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                (coe v3))
                                                                             (coe v2)))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                  (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                            (coe v2)))))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-legacy-premises
d_UTXOW'45'legacy'45'premises_4246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'legacy'45'premises_4246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3256
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  du_isLegacyMode_3760 (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                     (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                   (coe v0))))
                          (coe v4)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                      (coe v4)))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3952
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3812 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                      (coe v0)))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2736
                                   v0
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3926
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                         (coe v2))))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                             (coe v0)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                          (coe v2)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                    (coe v2)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                  (coe v3))
                                               (coe v2)))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                     (coe v0)))))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                             (coe v3))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1494)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_fromList_456
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3508
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                   (coe v0))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
                                             (coe v0) (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_allCredsNeeded_3508
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
                                                     (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                        (coe v0))))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                    (coe v0)))))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                           (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            v2)))))
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                       (coe v0))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_range_588
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                                    (coe v2)))))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
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
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                    (coe v3))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                               (coe v0)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                                 (coe v0)))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                       (coe v3))
                                                                                    (coe v2)))))
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Level.C_lift_20
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v5))))
                                                                (coe
                                                                   (\ v6 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                         (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                            (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                               (coe v3))
                                                                            (coe v2)))))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                 (coe v3))))
                                                        (coe
                                                           MAlonzo.Code.Level.C_lift_20
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                                (coe v0) (coe v1) (coe v2)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v4))))
                                                        (coe
                                                           (\ v5 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3246
                                                                    (coe v3))))
                                                           (coe
                                                              du_allowedLanguagesLegacy_3702
                                                              (coe v0) (coe v2)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                 (coe v3))))))
                                                (coe
                                                   du_languages_3698 (coe v0)
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                          (coe v3))
                                                                       (coe v2)))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0)))
                                                                            v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0)))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                         (coe
                                                                            (\ v6 ->
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440
                                                                            (coe v4)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3464
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0)))
                                                                            v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                                                  (coe v0)))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                            (coe
                                                                               (\ v6 ->
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                            (coe
                                                                               (\ v6 ->
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4688
                                                                               (coe v4))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToP2Script_3464
                                                                 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
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
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                  (coe v0))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618)
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                                  (coe v0))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
                                                            (coe v2))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                            (coe v2)))
                                                      (coe
                                                         d_hashScriptIntegrity_3770 (coe v0)
                                                         (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3246
                                                            (coe v3))
                                                         (coe
                                                            du_languages_3698 (coe v0)
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
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3250
                                                                                   (coe v3))
                                                                                (coe v2)))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3254
                                                                     (coe v3)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                               (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                               (coe v2))))))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.SUBUTXOW-premises
d_SUBUTXOW'45'premises_4248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXOW'45'premises_4248 v0 v1 v2 v3
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                   (coe v3))
                                (coe v2)))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                             (coe v0)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2736
                          v0
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3926
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                (coe v2))))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_586
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                 (coe v2)))))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                           (coe v2)))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                         (coe v3))
                                      (coe v2)))))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        du_TopLevelGuardWellFormed'63'_3812 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                               (coe v0)))))
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                       (coe v3))
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1494)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                           (coe v0)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                     (coe v3))
                                                                  (coe v2)))))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
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
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                                   (coe v3))
                                                                                (coe v2)))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                              (coe v0))
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                           (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3440)
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
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
                                                                 (coe v0))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                      (coe v0)))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662)
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
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
                                                                (coe v3))))
                                                       (coe
                                                          MAlonzo.Code.Level.C_lift_20
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                               (coe v0) (coe v1) (coe v2)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v5))))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3444
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
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                      (coe v3))
                                                                   (coe v2)))))
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
                                                        (coe v3))))
                                               (coe
                                                  MAlonzo.Code.Level.C_lift_20
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3300
                                                       (coe v0) (coe v1) (coe v2)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v4))))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3276
                                                           (coe v3))))
                                                  (coe
                                                     du_allowedLanguages_3726 (coe v0) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                        (coe v3))))))
                                       (coe
                                          du_languages_3698 (coe v0)
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                 (coe v3))
                                                              (coe v2)))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
                                                (coe v2)))
                                          (coe
                                             d_hashScriptIntegrity_3770 (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3276
                                                (coe v3))
                                             (coe
                                                du_languages_3698 (coe v0)
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3470
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3280
                                                                       (coe v3))
                                                                    (coe v2)))))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3282
                                                         (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
                                                   (coe v2))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txSub
d_'46'generalizedField'45'txSub_86745 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
d_'46'generalizedField'45'txSub_86745 v0
  = case coe v0 of
      C_mkGeneralizeTel_86755 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_86747 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260
d_'46'generalizedField'45'Γ_86747 v0
  = case coe v0 of
      C_mkGeneralizeTel_86755 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₀
d_'46'generalizedField'45's'8320'_86749 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's'8320'_86749 v0
  = case coe v0 of
      C_mkGeneralizeTel_86755 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₁
d_'46'generalizedField'45's'8321'_86751 ::
  T_GeneralizeTel_86753 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's'8321'_86751 v0
  = case coe v0 of
      C_mkGeneralizeTel_86755 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_86753 a0 a1 = ()
data T_GeneralizeTel_86753
  = C_mkGeneralizeTel_86755 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3260
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_105019 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
d_'46'generalizedField'45'txTop_105019 v0
  = case coe v0 of
      C_mkGeneralizeTel_105029 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_105021 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228
d_'46'generalizedField'45'Γ_105021 v0
  = case coe v0 of
      C_mkGeneralizeTel_105029 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_105023 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's_105023 v0
  = case coe v0 of
      C_mkGeneralizeTel_105029 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_105025 ::
  T_GeneralizeTel_105027 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's''_105025 v0
  = case coe v0 of
      C_mkGeneralizeTel_105029 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_105027 a0 a1 = ()
data T_GeneralizeTel_105027
  = C_mkGeneralizeTel_105029 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_124003 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
d_'46'generalizedField'45'txTop_124003 v0
  = case coe v0 of
      C_mkGeneralizeTel_124013 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_124005 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228
d_'46'generalizedField'45'Γ_124005 v0
  = case coe v0 of
      C_mkGeneralizeTel_124013 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_124007 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's_124007 v0
  = case coe v0 of
      C_mkGeneralizeTel_124013 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_124009 ::
  T_GeneralizeTel_124011 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
d_'46'generalizedField'45's''_124009 v0
  = case coe v0 of
      C_mkGeneralizeTel_124013 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_124011 a0 a1 = ()
data T_GeneralizeTel_124011
  = C_mkGeneralizeTel_124013 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3228
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3288
