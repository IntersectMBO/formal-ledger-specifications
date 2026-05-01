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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
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
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.ExUnits
d_ExUnits_222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_222 = erased
-- _.HasData-Tx
d_HasData'45'Tx_352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4096
d_HasData'45'Tx_352 ~v0 = du_HasData'45'Tx_352
du_HasData'45'Tx_352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4096
du_HasData'45'Tx_352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398
-- _.HasGuards-Tx
d_HasGuards'45'Tx_416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4156
d_HasGuards'45'Tx_416 ~v0 = du_HasGuards'45'Tx_416
du_HasGuards'45'Tx_416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4156
du_HasGuards'45'Tx_416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4402
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3890
d_HasSubTransactions'45'TopLevelTx_538 ~v0
  = du_HasSubTransactions'45'TopLevelTx_538
du_HasSubTransactions'45'TopLevelTx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3890
du_HasSubTransactions'45'TopLevelTx_538
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4328
-- _.HasTopLevelGuards-SubLevelTx
d_HasTopLevelGuards'45'SubLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3914
d_HasTopLevelGuards'45'SubLevelTx_544 ~v0
  = du_HasTopLevelGuards'45'SubLevelTx_544
du_HasTopLevelGuards'45'SubLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3914
du_HasTopLevelGuards'45'SubLevelTx_544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'SubLevelTx_4330
-- _.HasTxId-Tx
d_HasTxId'45'Tx_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3936
d_HasTxId'45'Tx_564 ~v0 = du_HasTxId'45'Tx_564
du_HasTxId'45'Tx_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3936
du_HasTxId'45'Tx_564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4388
-- _.Hashable-Script
d_Hashable'45'Script_618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
         (coe v0))
-- _.IsBootstrapAddr
d_IsBootstrapAddr_626 a0 a1 = ()
-- _.IsBootstrapAddr?
d_IsBootstrapAddr'63'_628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_628 ~v0 = du_IsBootstrapAddr'63'_628
du_IsBootstrapAddr'63'_628 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_628
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- _.IsKeyHashObj
d_IsKeyHashObj_632 a0 a1 = ()
-- _.IsKeyHashObj?
d_IsKeyHashObj'63'_634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_634 ~v0 = du_IsKeyHashObj'63'_634
du_IsKeyHashObj'63'_634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_634
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- _.THash
d_THash_652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_652 = erased
-- _.Language
d_Language_660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Language_660 = erased
-- _.P1Script
d_P1Script_702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_702 = erased
-- _.PlutusScript
d_PlutusScript_708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_708 = erased
-- _.PParams
d_PParams_712 a0 = ()
-- _.PlutusV1
d_PlutusV1_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV1_730 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV2
d_PlutusV2_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV2_732 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV3
d_PlutusV3_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV3_734 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV4
d_PlutusV4_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_736 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.Redeemer
d_Redeemer_758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_758 = erased
-- _.RedeemerPtr
d_RedeemerPtr_760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_760 = erased
-- _.Script
d_Script_794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_794 = erased
-- _.ScriptHash
d_ScriptHash_802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_802 = erased
-- _.SubLevelTx
d_SubLevelTx_870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_870 = erased
-- _.TopLevelTx
d_TopLevelTx_890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_890 = erased
-- _.Tx
d_Tx_896 a0 a1 = ()
-- _.TxOut
d_TxOut_914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_914 = erased
-- _.UTxO
d_UTxO_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_924 = erased
-- _.isKeyHashObj
d_isKeyHashObj_1064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1064 ~v0 = du_isKeyHashObj_1064
du_isKeyHashObj_1064 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1064
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1084 ~v0 = du_isScriptObj_1084
du_isScriptObj_1084 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1084
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1088 = erased
-- _.language
d_language_1098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_language_1098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v0)))
-- _.payCred
d_payCred_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1118 ~v0 = du_payCred_1118
du_payCred_1118 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1118
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- _.toP1Script
d_toP1Script_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1168 ~v0 = du_toP1Script_1168
du_toP1Script_1168 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1168
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662
-- _.toP2Script
d_toP2Script_1170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1170 ~v0 = du_toP2Script_1170
du_toP2Script_1170 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1170
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674
-- _.validP1Script
d_validP1Script_1194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1194 = erased
-- _.PParams.Emax
d_Emax_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- _.PParams.a
d_a_1952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- _.PParams.a0
d_a0_1954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- _.PParams.b
d_b_1956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_454
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
         (coe v0))
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- _.PParams.nopt
d_nopt_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- _.PParams.prices
d_prices_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- _.PParams.pv
d_pv_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- _.Tx.isValid
d_isValid_2482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  AgdaAny
d_isValid_2482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3646
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  Maybe AgdaAny
d_txAuxData_2484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
      (coe v0)
-- _.Tx.txBody
d_txBody_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
d_txBody_2486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
      (coe v0)
-- _.Tx.txSize
d_txSize_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  Integer
d_txSize_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3644
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
d_txWitnesses_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__2578 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2582 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'SubUTxOEnv_2634 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_2634
du_HasPParams'45'SubUTxOEnv_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'SubUTxOEnv_2634
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'SubUTxOEnv_3272
-- Ledger.Dijkstra.Specification.Utxow._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'UTxOEnv_2636 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2636
du_HasPParams'45'UTxOEnv_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'UTxOEnv_2636
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasPParams'45'UTxOEnv_3258
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3180
d_HasScriptPool'45'SubUTxOEnv_2642 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_2642
du_HasScriptPool'45'SubUTxOEnv_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3180
du_HasScriptPool'45'SubUTxOEnv_2642
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'SubUTxOEnv_3280
-- Ledger.Dijkstra.Specification.Utxow._.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3180
d_HasScriptPool'45'UTxOEnv_2644 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_2644
du_HasScriptPool'45'UTxOEnv_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_HasScriptPool_3180
du_HasScriptPool'45'UTxOEnv_2644
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasScriptPool'45'UTxOEnv_3266
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3602
d_HasUTxO'45'SubUTxOEnv_2658 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_2658
du_HasUTxO'45'SubUTxOEnv_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3602
du_HasUTxO'45'SubUTxOEnv_2658
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'SubUTxOEnv_3276
-- Ledger.Dijkstra.Specification.Utxow._.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3602
d_HasUTxO'45'UTxOEnv_2660 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_2660
du_HasUTxO'45'UTxOEnv_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3602
du_HasUTxO'45'UTxOEnv_2660
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOEnv_3262
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv
d_SubUTxOEnv_2680 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv
d_UTxOEnv_2692 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState
d_UTxOState_2696 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.accountBalances
d_accountBalances_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.allScripts
d_allScripts_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  Bool
d_isTopLevelValid_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.pparams
d_pparams_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3086
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.slot
d_slot_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  AgdaAny
d_slot_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3084
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.treasury
d_treasury_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  Integer
d_treasury_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.SubUTxOEnv.utxo₀
d_utxo'8320'_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.accountBalances
d_accountBalances_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3064
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.allScripts
d_allScripts_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.depositsChange
d_depositsChange_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_DepositsChange_3024
d_depositsChange_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3060
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.pparams
d_pparams_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3054
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.slot
d_slot_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  AgdaAny
d_slot_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3052
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.treasury
d_treasury_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  Integer
d_treasury_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3056
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOEnv.utxo₀
d_utxo'8320'_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.donations
d_donations_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100 ->
  Integer
d_donations_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.fees
d_fees_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100 ->
  Integer
d_fees_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.UTxOState.utxo
d_utxo_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credentialToP2Script
d_credentialToP2Script_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
d_credentialToP2Script_2860 v0 ~v1
  = du_credentialToP2Script_2860 v0
du_credentialToP2Script_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
du_credentialToP2Script_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3240
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.credsNeeded
d_credsNeeded_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2862 v0 ~v1 = du_credsNeeded_2862 v0
du_credsNeeded_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow._.rdptr
d_rdptr_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_2972 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2870 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3096
      (coe v0) (coe v1) v3 v4
-- Ledger.Dijkstra.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2876 ~v0 ~v1 = du_txOutToDataHash_2876
du_txOutToDataHash_2876 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236
-- Ledger.Dijkstra.Specification.Utxow.UsesBootstrapAddress
d_UsesBootstrapAddress_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  ()
d_UsesBootstrapAddress_2896 = erased
-- Ledger.Dijkstra.Specification.Utxow._._.HasInlineDatum
d_HasInlineDatum_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_HasInlineDatum_2980 = erased
-- Ledger.Dijkstra.Specification.Utxow._._.UsesV2Features
d_UsesV2Features_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_UsesV2Features_2984 = erased
-- Ledger.Dijkstra.Specification.Utxow._.UsesV3Features
d_UsesV3Features_2988 a0 a1 a2 = ()
data T_UsesV3Features_2988
  = C_hasVotes_2990 | C_hasProposals_2992 |
    C_hasDonation_2994 MAlonzo.Code.Data.Nat.Base.T_NonZero_112 |
    C_hasTreasure_2996 MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
-- Ledger.Dijkstra.Specification.Utxow._.UsesV4Features
d_UsesV4Features_2998 a0 a1 a2 = ()
data T_UsesV4Features_2998
  = C_hasSubtransactions_3000 | C_hasGuards_3002 |
    C_hasDirectDeposits_3004 | C_hasBalanceIntervals_3006
-- Ledger.Dijkstra.Specification.Utxow._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_3014 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_3014 v2
du_Dec'45'UsesV3Features_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_3014 v0
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3720
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3722
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3718
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3726
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                   (coe v0)))) in
                coe
                  (let v5
                         = let v5
                                 = let v5
                                         = case coe v4 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                               -> coe
                                                    seq (coe v5)
                                                    (case coe v6 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                                         -> coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                 (coe C_hasTreasure_2996 (coe v7)))
                                                       _ -> MAlonzo.RTE.mazUnreachableError)
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
                                                                (coe C_hasDonation_2994 (coe v8)))
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
                                                        (coe C_hasProposals_2992))
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
                                                                                  C_hasTreasure_2996
                                                                                  (coe v10)))
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
                                                                             C_hasDonation_2994
                                                                             (coe v11)))
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
                                                                  (coe C_hasProposals_2992))
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
                                                   (coe C_hasVotes_2990))
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
                                                                                     C_hasTreasure_2996
                                                                                     (coe v11)))
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
                                                                                C_hasDonation_2994
                                                                                (coe v12)))
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
                                                                                               C_hasTreasure_2996
                                                                                               (coe
                                                                                                  v14)))
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
                                                                                          C_hasDonation_2994
                                                                                          (coe
                                                                                             v15)))
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
                                                                        (coe C_hasProposals_2992))
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
                                                                                                  C_hasTreasure_2996
                                                                                                  (coe
                                                                                                     v15)))
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
                                                                                                            C_hasTreasure_2996
                                                                                                            (coe
                                                                                                               v18)))
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
                                                                                                C_hasDonation_2994
                                                                                                (coe
                                                                                                   v17)))
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
                                                                                                               C_hasTreasure_2996
                                                                                                               (coe
                                                                                                                  v19)))
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
-- Ledger.Dijkstra.Specification.Utxow._.Dec-UsesV4Features
d_Dec'45'UsesV4Features_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV4Features_3064 ~v0 ~v1 v2
  = du_Dec'45'UsesV4Features_3064 v2
du_Dec'45'UsesV4Features_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV4Features_3064 v0
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                (coe v0)))))
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4264
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4342)
                                   v0))))
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                                             (coe C_hasBalanceIntervals_3006))))
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
                                                                (coe C_hasDirectDeposits_3004))
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
                                                        (coe C_hasGuards_3002))
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
                                                                                  C_hasBalanceIntervals_3006))
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
                                                                             C_hasDirectDeposits_3004))
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
                                                                  (coe C_hasGuards_3002))
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
                                                   (coe C_hasSubtransactions_3000))
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
                                                                                     C_hasBalanceIntervals_3006))
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
                                                                                C_hasDirectDeposits_3004))
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
                                                                                               C_hasBalanceIntervals_3006))
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
                                                                                          C_hasDirectDeposits_3004))
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
                                                                        (coe C_hasGuards_3002))
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
                                                                                                  C_hasBalanceIntervals_3006))
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
                                                                                                            C_hasBalanceIntervals_3006))
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
                                                                                                C_hasDirectDeposits_3004))
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
                                                                                                               C_hasBalanceIntervals_3006))
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
d_languages_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  [AgdaAny] -> [AgdaAny]
d_languages_3096 v0 ~v1 v2 = du_languages_3096 v0 v2
du_languages_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny] -> [AgdaAny]
du_languages_3096 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v0))))
      v1
-- Ledger.Dijkstra.Specification.Utxow.allowedLanguagesLegacyMode
d_allowedLanguagesLegacyMode_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguagesLegacyMode_3100 v0 ~v1 v2 v3
  = du_allowedLanguagesLegacyMode_3100 v0 v2 v3
du_allowedLanguagesLegacyMode_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguagesLegacyMode_3100 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe du_Dec'45'UsesV3Features_3014 (coe v1))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_456
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                          (coe v0))))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__38
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                         (coe
                            (\ v5 ->
                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4424
                            (coe v4))))
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                   (coe v0))))
                          (coe v2)
                          (coe
                             MAlonzo.Code.Axiom.Set.du__'8746'__708
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                v1)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4024
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4358)
                                v1))))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_456
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                     (coe v0))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_456
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                        (coe v0))))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
-- Ledger.Dijkstra.Specification.Utxow.hashScriptIntegrity
d_hashScriptIntegrity_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_3106 v0 v1 v2 v3 v4 v5
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
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                      (coe v0))))))
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2638
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3070
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
d_TopLevelGuardWellFormed_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TopLevelGuardWellFormed_3136 = erased
-- Ledger.Dijkstra.Specification.Utxow.TopLevelGuardWellFormed?
d_TopLevelGuardWellFormed'63'_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_TopLevelGuardWellFormed'63'_3148 v0 ~v1 v2 v3
  = du_TopLevelGuardWellFormed'63'_3148 v0 v2 v3
du_TopLevelGuardWellFormed'63'_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_TopLevelGuardWellFormed'63'_3148 v0 v1 v2
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
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3240
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP1Script_3250
                          (coe v0) (coe v3) (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3156 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3156
  = C_SUBUTXOW_3286 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> Maybe AgdaAny
d_txAuxData_3162 ~v0 ~v1 v2 = du_txAuxData_3162 v2
du_txAuxData_3162 :: T_GeneralizeTel_56257 -> Maybe AgdaAny
du_txAuxData_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
      (coe d_'46'generalizedField'45'txSub_56249 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
d_txBody_3164 ~v0 ~v1 v2 = du_txBody_3164 v2
du_txBody_3164 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
du_txBody_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
      (coe d_'46'generalizedField'45'txSub_56249 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
d_txWitnesses_3168 ~v0 ~v1 v2 = du_txWitnesses_3168 v2
du_txWitnesses_3168 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
du_txWitnesses_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
      (coe d_'46'generalizedField'45'txSub_56249 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3178 ~v0 ~v1 v2 = du_referenceInputs_3178 v2
du_referenceInputs_3178 ::
  T_GeneralizeTel_56257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> Maybe AgdaAny
d_scriptIntegrityHash_3182 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3182 v2
du_scriptIntegrityHash_3182 ::
  T_GeneralizeTel_56257 -> Maybe AgdaAny
du_scriptIntegrityHash_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3730
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> Maybe AgdaAny
d_txADhash_3184 ~v0 ~v1 v2 = du_txADhash_3184 v2
du_txADhash_3184 :: T_GeneralizeTel_56257 -> Maybe AgdaAny
du_txADhash_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txId
d_txId_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> AgdaAny
d_txId_3202 ~v0 ~v1 v2 = du_txId_3202 v2
du_txId_3202 :: T_GeneralizeTel_56257 -> AgdaAny
du_txId_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3706
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3204 ~v0 ~v1 v2 = du_txIns_3204 v2
du_txIns_3204 ::
  T_GeneralizeTel_56257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3208 ~v0 ~v1 v2 = du_txOuts_3208 v2
du_txOuts_3208 ::
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3214 ~v0 ~v1 v2 = du_txVldt_3214 v2
du_txVldt_3214 ::
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txData
d_txData_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> [AgdaAny]
d_txData_3224 ~v0 ~v1 v2 = du_txData_3224 v2
du_txData_3224 :: T_GeneralizeTel_56257 -> [AgdaAny]
du_txData_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3758
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txRedeemers
d_txRedeemers_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3226 ~v0 ~v1 v2 = du_txRedeemers_3226 v2
du_txRedeemers_3226 ::
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txRedeemers_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3228 ~v0 ~v1 v2 = du_vKeySigs_3228 v2
du_vKeySigs_3228 ::
  T_GeneralizeTel_56257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
         (coe d_'46'generalizedField'45'txSub_56249 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__3288 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOW'10632'__3288
  = C_UTXOW'45'normal_3412 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_UTXOW'45'legacy_3538 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> Maybe AgdaAny
d_txAuxData_3294 ~v0 ~v1 v2 = du_txAuxData_3294 v2
du_txAuxData_3294 :: T_GeneralizeTel_72545 -> Maybe AgdaAny
du_txAuxData_3294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
      (coe d_'46'generalizedField'45'txTop_72537 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
d_txBody_3296 ~v0 ~v1 v2 = du_txBody_3296 v2
du_txBody_3296 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
du_txBody_3296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
      (coe d_'46'generalizedField'45'txTop_72537 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
d_txWitnesses_3300 ~v0 ~v1 v2 = du_txWitnesses_3300 v2
du_txWitnesses_3300 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
du_txWitnesses_3300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
      (coe d_'46'generalizedField'45'txTop_72537 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3310 ~v0 ~v1 v2 = du_referenceInputs_3310 v2
du_referenceInputs_3310 ::
  T_GeneralizeTel_72545 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> Maybe AgdaAny
d_txADhash_3316 ~v0 ~v1 v2 = du_txADhash_3316 v2
du_txADhash_3316 :: T_GeneralizeTel_72545 -> Maybe AgdaAny
du_txADhash_3316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3336 ~v0 ~v1 v2 = du_txIns_3336 v2
du_txIns_3336 ::
  T_GeneralizeTel_72545 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3340 ~v0 ~v1 v2 = du_txOuts_3340 v2
du_txOuts_3340 ::
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3346 ~v0 ~v1 v2 = du_txVldt_3346 v2
du_txVldt_3346 ::
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3360 ~v0 ~v1 v2 = du_vKeySigs_3360 v2
du_vKeySigs_3360 ::
  T_GeneralizeTel_72545 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_3360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
         (coe d_'46'generalizedField'45'txTop_72537 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txAuxData
d_txAuxData_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> Maybe AgdaAny
d_txAuxData_3418 ~v0 ~v1 v2 = du_txAuxData_3418 v2
du_txAuxData_3418 :: T_GeneralizeTel_88287 -> Maybe AgdaAny
du_txAuxData_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
      (coe d_'46'generalizedField'45'txTop_88279 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txBody
d_txBody_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
d_txBody_3420 ~v0 ~v1 v2 = du_txBody_3420 v2
du_txBody_3420 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3624
du_txBody_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
      (coe d_'46'generalizedField'45'txTop_88279 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.txWitnesses
d_txWitnesses_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
d_txWitnesses_3424 ~v0 ~v1 v2 = du_txWitnesses_3424 v2
du_txWitnesses_3424 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3626
du_txWitnesses_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
      (coe d_'46'generalizedField'45'txTop_88279 (coe v0))
-- Ledger.Dijkstra.Specification.Utxow._.referenceInputs
d_referenceInputs_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3434 ~v0 ~v1 v2 = du_referenceInputs_3434 v2
du_referenceInputs_3434 ::
  T_GeneralizeTel_88287 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referenceInputs_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txADhash
d_txADhash_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> Maybe AgdaAny
d_txADhash_3440 ~v0 ~v1 v2 = du_txADhash_3440 v2
du_txADhash_3440 :: T_GeneralizeTel_88287 -> Maybe AgdaAny
du_txADhash_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txBalanceIntervals
d_txBalanceIntervals_3442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3442 ~v0 ~v1 v2
  = du_txBalanceIntervals_3442 v2
du_txBalanceIntervals_3442 ::
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txBalanceIntervals_3442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txDirectDeposits
d_txDirectDeposits_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3446 ~v0 ~v1 v2 = du_txDirectDeposits_3446 v2
du_txDirectDeposits_3446 ::
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txDirectDeposits_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3738
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txIns
d_txIns_3460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3460 ~v0 ~v1 v2 = du_txIns_3460 v2
du_txIns_3460 ::
  T_GeneralizeTel_88287 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txOuts
d_txOuts_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3464 ~v0 ~v1 v2 = du_txOuts_3464 v2
du_txOuts_3464 ::
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.txVldt
d_txVldt_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3470 ~v0 ~v1 v2 = du_txVldt_3470 v2
du_txVldt_3470 ::
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow._.vKeySigs
d_vKeySigs_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3484 ~v0 ~v1 v2 = du_vKeySigs_3484 v2
du_vKeySigs_3484 ::
  T_GeneralizeTel_88287 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vKeySigs_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
         (coe d_'46'generalizedField'45'txTop_88279 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-normal-premises
d_UTXOW'45'normal'45'premises_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'normal'45'premises_3540 v0 ~v1 v2 v3
  = du_UTXOW'45'normal'45'premises_3540 v0 v2 v3
du_UTXOW'45'normal'45'premises_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'normal'45'premises_3540 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                             (coe v0)))
                       v3)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                   (coe v0))))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_604
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                (coe v0)))
                          v3)
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                   (coe v2))
                                (coe v1)))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                     (coe v2)))))
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                              (coe v2))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__708
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v1))))))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                  (coe
                     (\ v3 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                      (coe v0)))
                                v3)
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
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                         (coe v2))
                                      (coe v1)))))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                           (coe v2))))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_concatMap'737'_150
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3736
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                   (coe v3)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                           (coe v1)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0)))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2636
                                v0
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3706
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                      (coe v1))))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                              (coe v1)))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                       (coe v1)))))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                 (coe v1)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                            (coe v0)))
                                      v3)
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                               (coe v2))
                                            (coe v1)))))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                  (coe v0)))))
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                               (coe v1)))))))
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
                                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                       (coe v2))
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0)))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_426
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                            (coe v2)))))
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
                                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                          (coe v2))
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v3 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                        (coe v0))))))
                                         (coe v3)
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                              (coe v0)))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
                                               v1))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v3 ->
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
                                                  (coe v3))))
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                          (coe v0))))
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                       (\ v5 ->
                                                          coe
                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                        (coe v2))
                                                                     (coe v1)))))
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                          (coe v2)))))
                                              (\ v5 ->
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
                                                            (coe v3))))
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
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                             (coe v2))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                (coe v1)))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v3 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                           (coe v0))))))
                                            (coe v3)
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
                                                            MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                            erased
                                                            MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                            erased
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                        (coe v0))))
                                                               (coe v5)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                     (\ v6 ->
                                                                        coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                (coe v0)))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                                   (coe v0)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                                      (coe v2))
                                                                                   (coe v1)))))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                                        (coe v2)))))
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
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                 (coe v0))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                              (coe v1))))))
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_range_588
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                              (coe v1)))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
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
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                    (coe v0))
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                 (coe v1))))))))))
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                         (coe v0)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
                                          v1)))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                        (coe v0))))
                                               (coe v3)
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
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_454
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3054
                                                           (coe v2))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                              (coe v0))))))))
                                       (coe
                                          du_languages_3096 (coe v0)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                (\ v3 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                              (coe v0)))
                                                        v3)
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
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                (coe v4))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                 (coe v2))
                                                              (coe v1)))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                          (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                   (coe v0))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
                                             (coe v1))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.UTXOW-legacy-premises
d_UTXOW'45'legacy'45'premises_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'legacy'45'premises_3542 v0 ~v1 v2 v3
  = du_UTXOW'45'legacy'45'premises_3542 v0 v2 v3
du_UTXOW'45'legacy'45'premises_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'legacy'45'premises_3542 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                             (coe v0)))
                       v3)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                         (coe v0))))
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_604
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                (coe v0)))
                          v3)
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                   (coe v2))
                                (coe v1)))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                     (coe v2)))))
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                              (coe v2))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__708
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v1))))))))
               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                        (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3738
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                              (coe v1)))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                 (coe v1)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                         (coe v1)))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_concatMap'737'_150
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3736
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                            (coe v3)))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0)))
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2636
                                         v0
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3706
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                               (coe v1))))
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                (coe v1)))))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                          (coe v1)))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662)
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                       (\ v3 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                     (coe v0)))
                                               v3)
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
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe v4))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                        (coe v2))
                                                     (coe v1)))))
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                          (coe v2)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v3 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                     (coe v0))))
                                            (coe v3)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_426
                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                           (coe v0)))))
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                        (coe v1)))))))
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
                                          (\ v3 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                (coe v2))
                                             (coe v1)))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                     (coe v0)))
                                               (coe v3)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_map_426
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                     (coe v2)))))
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
                                             (\ v3 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                   (coe v2))
                                                (coe v1)))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v3 ->
                                                coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                 (coe v0))))))
                                                  (coe v3)
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                       (coe v0)))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
                                                        v1))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (\ v3 ->
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
                                                           (coe v3))))
                                                  (\ v4 ->
                                                     coe
                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                       MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                   (coe v0))))
                                                          (coe v4)
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                (\ v5 ->
                                                                   coe
                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v0)))
                                                                     (coe
                                                                        MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                                 (coe v2))
                                                                              (coe v1)))))
                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                                   (coe v2)))))
                                                       (\ v5 ->
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
                                                                     (coe v3))))
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
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                            (coe v0))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                         (coe v1)))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v3 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                    (coe v0))))))
                                                     (coe v3)
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
                                                           (\ v4 ->
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
                                                                         (coe v4))))
                                                                (\ v5 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18
                                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                     erased
                                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                 (coe v0))))
                                                                        (coe v5)
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                         (coe v0)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                            (coe
                                                                                               v0)))
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
                                                                                              (coe
                                                                                                 v7))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                                            (coe v0)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                                               (coe
                                                                                                  v2))
                                                                                            (coe
                                                                                               v1)))))
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                                                 (coe v2)))))
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
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                          (coe v0))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                    (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                       (coe v1))))))
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_range_588
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                       (coe v1)))))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
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
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                          (coe v1))))))))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                  (coe v0)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
                                                   v1)))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v3 ->
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                 (coe v0))))
                                                        (coe v3)
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
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_454
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3054
                                                                    (coe v2))))
                                                           (coe
                                                              du_allowedLanguagesLegacyMode_3100
                                                              (coe v0) (coe v1)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                 (coe v2))))))
                                                (coe
                                                   du_languages_3096 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                         (\ v3 ->
                                                            coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                       (coe v0)))
                                                                 v3)
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
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v4))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3058
                                                                          (coe v2))
                                                                       (coe v1)))))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3062
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                            (coe v0))))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
                                                      (coe v1)))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow.SUBUTXOW-premises
d_SUBUTXOW'45'premises_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3052 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXOW'45'premises_3544 v0 v1 v2 v3
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
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txidBytes_2636
                       v0
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3706
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                     (coe v2)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                 (coe v0)))))
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_586
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                              (coe v2)))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3734
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                        (coe v2)))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                        (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662)
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                      (coe v3))
                                   (coe v2)))))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
                        (coe v3)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     du_TopLevelGuardWellFormed'63'_3148 (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3736
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                        (coe v2))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                    (coe v2))))
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du__'8746'__708
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                          (coe v2))))))))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                               (coe v0)))))
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3754
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                            (coe v2)))))))
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0)))
                                   (coe v4)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                           (coe v0)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
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
                                              MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                       (coe v0))))
                                              (coe v5)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                 (MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                    (\ v6 ->
                                                       coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                     (coe v3))
                                                                  (coe v2)))))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
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
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                            MAlonzo.Code.Ledger.Prelude.du_lookupHash_128
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                     (coe v0))))
                                                            (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                                  (\ v7 ->
                                                                     coe
                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                                   (coe v3))
                                                                                (coe v2)))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                              (coe v0))
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3698
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3704
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                           (coe v2)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                  (MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_txOutToDataHash_3236)
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
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                 (coe v0))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3700
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                      (coe v0)))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4104
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4398)
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
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
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
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3240
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
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v0)))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                              (coe v3))
                                                                           (coe v2)))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
                                                                (coe v3))))
                                                       (coe
                                                          MAlonzo.Code.Level.C_lift_20
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3096
                                                               (coe v0) (coe v1) (coe v2)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v5))))
                                                       (coe
                                                          (\ v6 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
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
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credentialToP2Script_3240
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
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                      (coe v3))
                                                                   (coe v2)))))
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
                                                        (coe v3))))
                                               (coe
                                                  MAlonzo.Code.Level.C_lift_20
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_rdptr_3096
                                                       (coe v0) (coe v1) (coe v2)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v4))))
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
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
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_454
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3086
                                                           (coe v3))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                              (coe v0))))))))
                                       (coe
                                          du_languages_3096 (coe v0)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                (\ v4 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                 (coe v3))
                                                              (coe v2)))))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3716
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3648
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3730
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                (coe v2)))
                                          (coe
                                             d_hashScriptIntegrity_3106 (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3086
                                                (coe v3))
                                             (coe
                                                du_languages_3096 (coe v0)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                                                      (\ v4 ->
                                                         coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
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
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3260
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3090
                                                                       (coe v3))
                                                                    (coe v2)))))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3094
                                                         (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3758
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                   (coe v2))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txSub
d_'46'generalizedField'45'txSub_56249 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
d_'46'generalizedField'45'txSub_56249 v0
  = case coe v0 of
      C_mkGeneralizeTel_56259 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_56251 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068
d_'46'generalizedField'45'Γ_56251 v0
  = case coe v0 of
      C_mkGeneralizeTel_56259 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₀
d_'46'generalizedField'45's'8320'_56253 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's'8320'_56253 v0
  = case coe v0 of
      C_mkGeneralizeTel_56259 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s₁
d_'46'generalizedField'45's'8321'_56255 ::
  T_GeneralizeTel_56257 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's'8321'_56255 v0
  = case coe v0 of
      C_mkGeneralizeTel_56259 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_56257 a0 a1 = ()
data T_GeneralizeTel_56257
  = C_mkGeneralizeTel_56259 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3068
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_72537 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
d_'46'generalizedField'45'txTop_72537 v0
  = case coe v0 of
      C_mkGeneralizeTel_72547 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_72539 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036
d_'46'generalizedField'45'Γ_72539 v0
  = case coe v0 of
      C_mkGeneralizeTel_72547 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_72541 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's_72541 v0
  = case coe v0 of
      C_mkGeneralizeTel_72547 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_72543 ::
  T_GeneralizeTel_72545 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's''_72543 v0
  = case coe v0 of
      C_mkGeneralizeTel_72547 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_72545 a0 a1 = ()
data T_GeneralizeTel_72545
  = C_mkGeneralizeTel_72547 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-txTop
d_'46'generalizedField'45'txTop_88279 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
d_'46'generalizedField'45'txTop_88279 v0
  = case coe v0 of
      C_mkGeneralizeTel_88289 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_88281 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036
d_'46'generalizedField'45'Γ_88281 v0
  = case coe v0 of
      C_mkGeneralizeTel_88289 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_88283 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's_88283 v0
  = case coe v0 of
      C_mkGeneralizeTel_88289 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_88285 ::
  T_GeneralizeTel_88287 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
d_'46'generalizedField'45's''_88285 v0
  = case coe v0 of
      C_mkGeneralizeTel_88289 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_88287 a0 a1 = ()
data T_GeneralizeTel_88287
  = C_mkGeneralizeTel_88289 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3036
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3100
