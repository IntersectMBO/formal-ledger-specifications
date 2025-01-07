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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
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
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_178 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v0))
-- _.Tx
d_Tx_358 a0 = ()
-- _.isSigned
d_isSigned_488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_488 = erased
-- _.refScripts
d_refScripts_544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2682 (coe v0)
-- _.txscripts
d_txscripts_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2734 (coe v0)
-- _.validP1Script
d_validP1Script_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_578 = erased
-- _.Tx.body
d_body_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0)
-- _.Tx.isValid
d_isValid_1378 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Bool
d_isValid_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v0)
-- _.Tx.txAD
d_txAD_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Maybe AgdaAny
d_txAD_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2640 (coe v0)
-- _.Tx.wits
d_wits_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
d_wits_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1488 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1502 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1504 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1520 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1520 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1522 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> AgdaAny
d_slot_1522 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1918 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1524 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> Integer
d_treasury_1524 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1528 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1528 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1530 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_donations_1530 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1532 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_fees_1532 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1534 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1534 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1870 ~v0 ~v1
  = du_Dec'45'HasInlineDatum_1870
du_Dec'45'HasInlineDatum_1870 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1870
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'HasInlineDatum_2018
-- Ledger.Conway.Conformance.Utxow.L._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1872 ~v0 ~v1
  = du_Dec'45'UsesV3Features_1872
du_Dec'45'UsesV3Features_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1872
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'UsesV3Features_2096
-- Ledger.Conway.Conformance.Utxow.L._.HasInlineDatum
d_HasInlineDatum_1876 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1888 v0 ~v1
  = du_UTXOW'45'inductive'45'premises_1888 v0
du_UTXOW'45'inductive'45'premises_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1888 v0
  = coe
      MAlonzo.Code.Ledger.Utxow.du_UTXOW'45'inductive'45'premises_2408
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UsesV3Features
d_UsesV3Features_1890 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_1892 v0 ~v1 = du_allowedLanguages_1892 v0
du_allowedLanguages_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_1892 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2136 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.credsNeeded
d_credsNeeded_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1894 v0 ~v1 = du_credsNeeded_1894 v0
du_credsNeeded_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1894 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_credsNeeded_2198 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.d
d_d_1896 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1896 ~v0 v1 = du_d_1896 v1
du_d_1896 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1896 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.L._.getScripts
d_getScripts_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_1898 ~v0 ~v1 = du_getScripts_1898
du_getScripts_1898 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_1898
  = coe MAlonzo.Code.Ledger.Utxow.du_getScripts_2196
-- Ledger.Conway.Conformance.Utxow.L._.getVKeys
d_getVKeys_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_1900 ~v0 ~v1 = du_getVKeys_1900
du_getVKeys_1900 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_1900 = coe MAlonzo.Code.Ledger.Utxow.du_getVKeys_2134
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_1902 v0 ~v1 = du_languages_1902 v0
du_languages_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_1902 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_languages_2120 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> [AgdaAny]
d_scriptsNeeded_1904 v0 ~v1 = du_scriptsNeeded_1904 v0
du_scriptsNeeded_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> [AgdaAny]
du_scriptsNeeded_1904 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2274 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> [AgdaAny]
d_witsVKeyNeeded_1906 v0 ~v1 = du_witsVKeyNeeded_1906 v0
du_witsVKeyNeeded_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> [AgdaAny]
du_witsVKeyNeeded_1906 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2272 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._*↓_
d__'42''8595'__1928 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1928 ~v0 v1 v2 = du__'42''8595'__1928 v1 v2
du__'42''8595'__1928 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1928 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Conway.Conformance.Utxow.L._._=>ᵇ_
d__'61''62''7495'__1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1930 ~v0 ~v1 = du__'61''62''7495'__1930
du__'61''62''7495'__1930 :: Bool -> Bool -> Bool
du__'61''62''7495'__1930
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2570
-- Ledger.Conway.Conformance.Utxow.L._._≡?_
d__'8801''63'__1932 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._._≤ᵇ_
d__'8804''7495'__1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1934 ~v0 ~v1 = du__'8804''7495'__1934
du__'8804''7495'__1934 :: Integer -> Integer -> Bool
du__'8804''7495'__1934
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2576
-- Ledger.Conway.Conformance.Utxow.L._._≥ᵇ_
d__'8805''7495'__1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1936 ~v0 ~v1 = du__'8805''7495'__1936
du__'8805''7495'__1936 :: Integer -> Integer -> Bool
du__'8805''7495'__1936
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2578
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1938 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1940 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1942 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1942 v0
du_Dec'45'ValidCertDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1942 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2236 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Dec-inInterval
d_Dec'45'inInterval_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1944 v0 ~v1 = du_Dec'45'inInterval_1944 v0
du_Dec'45'inInterval_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1944 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2464 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1946 v0 ~v1 = du_HasCoin'45'UTxO_1946 v0
du_HasCoin'45'UTxO_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1946 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1984 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1948 v0 ~v1
  = du_HasCoin'45'UTxOState_1948 v0
du_HasCoin'45'UTxOState_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1948 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2566 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1952 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2956 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1956 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2954 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTXO-premises
d_UTXO'45'premises_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3146 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv
d_UTxOEnv_1962 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState
d_UTxOState_1964 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.ValidCertDeposits
d_ValidCertDeposits_1966 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._.balance
d_balance_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1970 v0 ~v1 = du_balance_1970 v0
du_balance_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1970 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.cbalance
d_cbalance_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1974 v0 ~v1 = du_cbalance_1974 v0
du_cbalance_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1974 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1966 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.certDeposit
d_certDeposit_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1978 ~v0 ~v1 = du_certDeposit_1978
du_certDeposit_1978 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1978
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_1986
-- Ledger.Conway.Conformance.Utxow.L._.certRefund
d_certRefund_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
d_certRefund_1980 ~v0 ~v1 = du_certRefund_1980
du_certRefund_1980 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812]
du_certRefund_1980
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2004
-- Ledger.Conway.Conformance.Utxow.L._.coinPolicies
d_coinPolicies_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> [AgdaAny]
d_coinPolicies_1982 v0 ~v1 = du_coinPolicies_1982 v0
du_coinPolicies_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1982 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2594 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.consumed
d_consumed_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
d_consumed_1984 v0 ~v1 = du_consumed_1984 v0
du_consumed_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
du_consumed_1984 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2776 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositRefunds
d_depositRefunds_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_depositRefunds_1988 v0 ~v1 = du_depositRefunds_1988 v0
du_depositRefunds_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
du_depositRefunds_1988 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2760 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositsChange
d_depositsChange_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1990 v0 ~v1 = du_depositsChange_1990 v0
du_depositsChange_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1990 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2434 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.feesOK
d_feesOK_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1996 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2600 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1998 ~v0 ~v1 = du_getDataHashes_1998
du_getDataHashes_1998 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1998
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1832
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2000 v0 ~v1 = du_getInputHashes_2000 v0
du_getInputHashes_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2000 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1836 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.inInterval
d_inInterval_2002 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxow.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2004 v0 ~v1 = du_isAdaOnly'7495'_2004 v0
du_isAdaOnly'7495'_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2004 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2596 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2006 v0 ~v1
  = du_isTwoPhaseScriptAddress_2006 v0
du_isTwoPhaseScriptAddress_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2006 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1820 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.minfee
d_minfee_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_minfee_2010 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1976 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.newDeposits
d_newDeposits_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_newDeposits_2012 v0 ~v1 = du_newDeposits_2012 v0
du_newDeposits_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
du_newDeposits_2012 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2768 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.outs
d_outs_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2016 ~v0 ~v1 = du_outs_2016
du_outs_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2016 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1954
-- Ledger.Conway.Conformance.Utxow.L._.produced
d_produced_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
d_produced_2018 v0 ~v1 = du_produced_2018 v0
du_produced_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> AgdaAny
du_produced_2018 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2784 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.proposalDepositsΔ
d_proposalDepositsΔ_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2020 v0 ~v1 = du_proposalDepositsΔ_2020 v0
du_proposalDepositsΔ_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2020 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2380 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.refScriptsSize
d_refScriptsSize_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Integer
d_refScriptsSize_2022 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1970 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.totExUnits
d_totExUnits_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> AgdaAny
d_totExUnits_2032 v0 ~v1 = du_totExUnits_2032 v0
du_totExUnits_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> AgdaAny
du_totExUnits_2032 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1892 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateCertDeposits
d_updateCertDeposits_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2034 v0 ~v1 = du_updateCertDeposits_2034 v0
du_updateCertDeposits_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2034 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2238 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateDeposits
d_updateDeposits_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2036 v0 ~v1 = du_updateDeposits_2036 v0
du_updateDeposits_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2036 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2328 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateProposalDeposits
d_updateProposalDeposits_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2038 v0 ~v1
  = du_updateProposalDeposits_2038 v0
du_updateProposalDeposits_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2038 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2316 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySize
d_utxoEntrySize_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2042 v0 ~v1 = du_utxoEntrySize_2042 v0
du_utxoEntrySize_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2042 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1906 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2044 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> Integer
d_utxoEntrySizeWithoutVal_2044 ~v0
  = du_utxoEntrySizeWithoutVal_2044
du_utxoEntrySizeWithoutVal_2044 :: Integer
du_utxoEntrySizeWithoutVal_2044 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxow.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2046 ~v0 ~v1
  = du_'8799''45''8709''7495'_2046
du_'8799''45''8709''7495'_2046 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2046 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2590 v1 v2
-- Ledger.Conway.Conformance.Utxow.L._.≟?
d_'8799''63'_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2048 ~v0 ~v1 = du_'8799''63'_2048
du_'8799''63'_2048 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2048 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_2986 v1 v2 v3
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.pparams
d_pparams_2074 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2074 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1920 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.slot
d_slot_2076 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> AgdaAny
d_slot_2076 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1918 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.treasury
d_treasury_2078 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910 -> Integer
d_treasury_2078 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.deposits
d_deposits_2082 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2082 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.donations
d_donations_2084 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_donations_2084 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.fees
d_fees_2086 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_fees_2086 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.utxo
d_utxo_2088 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2088 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2120 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2120
  = C_UTXOW'45'inductive_2226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> Maybe AgdaAny
d_txAD_2134 ~v0 ~v1 v2 = du_txAD_2134 v2
du_txAD_2134 :: T_GeneralizeTel_6705 -> Maybe AgdaAny
du_txAD_2134 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2640
      (coe d_'46'generalizedField'45'tx_6697 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_2136 ~v0 ~v1 v2 = du_body_2136 v2
du_body_2136 ::
  T_GeneralizeTel_6705 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
du_body_2136 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2634
      (coe d_'46'generalizedField'45'tx_6697 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
d_wits_2138 ~v0 ~v1 v2 = du_wits_2138 v2
du_wits_2138 ::
  T_GeneralizeTel_6705 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
du_wits_2138 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2636
      (coe d_'46'generalizedField'45'tx_6697 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2148 ~v0 ~v1 v2 = du_refInputs_2148 v2
du_refInputs_2148 ::
  T_GeneralizeTel_6705 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2148 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> Maybe AgdaAny
d_txADhash_2154 ~v0 ~v1 v2 = du_txADhash_2154 v2
du_txADhash_2154 :: T_GeneralizeTel_6705 -> Maybe AgdaAny
du_txADhash_2154 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> AgdaAny
d_txid_2164 ~v0 ~v1 v2 = du_txid_2164 v2
du_txid_2164 :: T_GeneralizeTel_6705 -> AgdaAny
du_txid_2164 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2168 ~v0 ~v1 v2 = du_txouts_2168 v2
du_txouts_2168 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2568
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2176 ~v0 ~v1 v2 = du_txvldt_2176 v2
du_txvldt_2176 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2184 ~v0 ~v1 v2 = du_scripts_2184 v2
du_scripts_2184 ::
  T_GeneralizeTel_6705 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2184 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2616
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2636
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2188 ~v0 ~v1 v2 = du_txdats_2188 v2
du_txdats_2188 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2188 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2618
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2636
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2192 ~v0 ~v1 v2 = du_vkSigs_2192 v2
du_vkSigs_2192 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2192 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2636
         (coe d_'46'generalizedField'45'tx_6697 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2202 ~v0 ~v1 v2 = du_utxo_2202 v2
du_utxo_2202 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2202 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1934
      (coe d_'46'generalizedField'45's_6699 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2252 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2252 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2252 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
                    (MAlonzo.Code.Ledger.Crypto.d_pkk_172
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2328 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2596
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2614
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                  (MAlonzo.Code.Ledger.Script.d_p1s_428
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v0)))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_398
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (MAlonzo.Code.Interface.Hashable.d_hash_16
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_548
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_vkSigs_2614
                           (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1)))))
                  (MAlonzo.Code.Ledger.Transaction.d_txvldt_2574
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2734
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_398
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.Hashable.d_hash_16
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2614
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2272 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2616
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__730
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2274 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_fromList_428
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
                                       (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                          (coe v0))
                                       erased erased erased
                                       (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_p1s_428
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                (coe v0))))
                                       (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                          (coe
                                             MAlonzo.Code.Ledger.Script.d_ps_452
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                (coe v0))))))
                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2682
                                    (coe v0) (coe v1)
                                    (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2)))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__730
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2274 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_fromList_428
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                         (MAlonzo.Code.Interface.Hashable.d_hash_16
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
                                               (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                  (coe v0))
                                               erased erased erased
                                               (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                                  (coe
                                                     MAlonzo.Code.Ledger.Script.d_p1s_428
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                        (coe v0))))
                                               (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                                  (coe
                                                     MAlonzo.Code.Ledger.Script.d_ps_452
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                        (coe v0))))))
                                         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2682
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2616
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_452
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                               (coe v0))))))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2618
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1836 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_452
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1836 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1832
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2568
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1832
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2566
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2634
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2618
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_452
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2136 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxow.du_languages_2120 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2588
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2640 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_6697 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2624
d_'46'generalizedField'45'tx_6697 v0
  = case coe v0 of
      C_mkGeneralizeTel_6707 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_6699 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_'46'generalizedField'45's_6699 v0
  = case coe v0 of
      C_mkGeneralizeTel_6707 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_6701 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910
d_'46'generalizedField'45'Γ_6701 v0
  = case coe v0 of
      C_mkGeneralizeTel_6707 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_6703 ::
  T_GeneralizeTel_6705 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_'46'generalizedField'45's''_6703 v0
  = case coe v0 of
      C_mkGeneralizeTel_6707 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_6705 a0 a1 = ()
data T_GeneralizeTel_6705
  = C_mkGeneralizeTel_6707 MAlonzo.Code.Ledger.Transaction.T_Tx_2624
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1910
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
