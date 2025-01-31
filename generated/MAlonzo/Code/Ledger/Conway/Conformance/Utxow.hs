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
d_Hashable'45'Script_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_176 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v0))
-- _.Tx
d_Tx_356 a0 = ()
-- _.isSigned
d_isSigned_486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_486 = erased
-- _.refScripts
d_refScripts_544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2680 (coe v0)
-- _.txscripts
d_txscripts_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2732 (coe v0)
-- _.validP1Script
d_validP1Script_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_578 = erased
-- _.Tx.body
d_body_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1380 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1490 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1504 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1506 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1522 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1522 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1524 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> AgdaAny
d_slot_1524 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1526 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> Integer
d_treasury_1526 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1926 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1530 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1530 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1532 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_donations_1532 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1534 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_fees_1534 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1536 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1536 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1872 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1874 ~v0 ~v1
  = du_Dec'45'HasInlineDatum_1874
du_Dec'45'HasInlineDatum_1874 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1874
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'HasInlineDatum_2022
-- Ledger.Conway.Conformance.Utxow.L._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1876 ~v0 ~v1
  = du_Dec'45'UsesV3Features_1876
du_Dec'45'UsesV3Features_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1876
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'UsesV3Features_2100
-- Ledger.Conway.Conformance.Utxow.L._.HasInlineDatum
d_HasInlineDatum_1880 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1892 v0 ~v1
  = du_UTXOW'45'inductive'45'premises_1892 v0
du_UTXOW'45'inductive'45'premises_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1892 v0
  = coe
      MAlonzo.Code.Ledger.Utxow.du_UTXOW'45'inductive'45'premises_2436
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UsesV3Features
d_UsesV3Features_1894 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_1896 v0 ~v1 = du_allowedLanguages_1896 v0
du_allowedLanguages_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_1896 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2140 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.credsNeeded
d_credsNeeded_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1898 v0 ~v1 = du_credsNeeded_1898 v0
du_credsNeeded_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1898 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_credsNeeded_2202 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.d
d_d_1900 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1900 ~v0 v1 = du_d_1900 v1
du_d_1900 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1900 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.L._.getScripts
d_getScripts_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_1902 ~v0 ~v1 = du_getScripts_1902
du_getScripts_1902 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_1902
  = coe MAlonzo.Code.Ledger.Utxow.du_getScripts_2200
-- Ledger.Conway.Conformance.Utxow.L._.getVKeys
d_getVKeys_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_1904 ~v0 ~v1 = du_getVKeys_1904
du_getVKeys_1904 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_1904 = coe MAlonzo.Code.Ledger.Utxow.du_getVKeys_2138
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_1906 v0 ~v1 = du_languages_1906 v0
du_languages_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_1906 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_languages_2124 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
d_scriptsNeeded_1908 v0 ~v1 = du_scriptsNeeded_1908 v0
du_scriptsNeeded_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
du_scriptsNeeded_1908 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
d_witsVKeyNeeded_1910 v0 ~v1 = du_witsVKeyNeeded_1910 v0
du_witsVKeyNeeded_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> [AgdaAny]
du_witsVKeyNeeded_1910 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2276 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._*↓_
d__'42''8595'__1932 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1932 ~v0 v1 v2 = du__'42''8595'__1932 v1 v2
du__'42''8595'__1932 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1932 v0 v1
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
d__'61''62''7495'__1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1934 ~v0 ~v1 = du__'61''62''7495'__1934
du__'61''62''7495'__1934 :: Bool -> Bool -> Bool
du__'61''62''7495'__1934
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2610
-- Ledger.Conway.Conformance.Utxow.L._._≡?_
d__'8801''63'__1936 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._._≤ᵇ_
d__'8804''7495'__1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1938 ~v0 ~v1 = du__'8804''7495'__1938
du__'8804''7495'__1938 :: Integer -> Integer -> Bool
du__'8804''7495'__1938
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2616
-- Ledger.Conway.Conformance.Utxow.L._._≥ᵇ_
d__'8805''7495'__1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1940 ~v0 ~v1 = du__'8805''7495'__1940
du__'8805''7495'__1940 :: Integer -> Integer -> Bool
du__'8805''7495'__1940
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2618
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1942 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1944 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1946 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1946 v0
du_Dec'45'ValidCertDeposits_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2276 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Dec-inInterval
d_Dec'45'inInterval_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1948 v0 ~v1 = du_Dec'45'inInterval_1948 v0
du_Dec'45'inInterval_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1948 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2504 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1950 v0 ~v1 = du_HasCoin'45'UTxO_1950 v0
du_HasCoin'45'UTxO_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1950 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_1988 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1952 v0 ~v1
  = du_HasCoin'45'UTxOState_1952 v0
du_HasCoin'45'UTxOState_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1952 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2606 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1956 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2996 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1960 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2994 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTXO-premises
d_UTXO'45'premises_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1964 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3186 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv
d_UTxOEnv_1966 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState
d_UTxOState_1968 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.ValidCertDeposits
d_ValidCertDeposits_1970 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._.balance
d_balance_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1974 v0 ~v1 = du_balance_1974 v0
du_balance_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1974 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1964 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.cbalance
d_cbalance_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1978 v0 ~v1 = du_cbalance_1978 v0
du_cbalance_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1978 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1970 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.certDeposit
d_certDeposit_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1982 ~v0 ~v1 = du_certDeposit_1982
du_certDeposit_1982 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1982
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_1990
-- Ledger.Conway.Conformance.Utxow.L._.certRefund
d_certRefund_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
d_certRefund_1984 ~v0 ~v1 = du_certRefund_1984
du_certRefund_1984 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814]
du_certRefund_1984
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2008
-- Ledger.Conway.Conformance.Utxow.L._.coinPolicies
d_coinPolicies_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> [AgdaAny]
d_coinPolicies_1986 v0 ~v1 = du_coinPolicies_1986 v0
du_coinPolicies_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1986 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2634 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.consumed
d_consumed_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_consumed_1988 v0 ~v1 = du_consumed_1988 v0
du_consumed_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_consumed_1988 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2816 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositRefunds
d_depositRefunds_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_depositRefunds_1992 v0 ~v1 = du_depositRefunds_1992 v0
du_depositRefunds_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_depositRefunds_1992 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2800 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositsChange
d_depositsChange_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1994 v0 ~v1 = du_depositsChange_1994 v0
du_depositsChange_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1994 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2474 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.feesOK
d_feesOK_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2000 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2640 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2002 ~v0 ~v1 = du_getDataHashes_2002
du_getDataHashes_2002 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2002
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1836
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2004 v0 ~v1 = du_getInputHashes_2004 v0
du_getInputHashes_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2004 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1840 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.inInterval
d_inInterval_2006 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxow.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2008 v0 ~v1 = du_isAdaOnly'7495'_2008 v0
du_isAdaOnly'7495'_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2636 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2010 v0 ~v1
  = du_isTwoPhaseScriptAddress_2010 v0
du_isTwoPhaseScriptAddress_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2010 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1824 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.minfee
d_minfee_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_minfee_2014 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_1980 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.newDeposits
d_newDeposits_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
d_newDeposits_2016 v0 ~v1 = du_newDeposits_2016 v0
du_newDeposits_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> Integer
du_newDeposits_2016 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2808 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.outs
d_outs_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2020 ~v0 ~v1 = du_outs_2020
du_outs_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2020 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1958
-- Ledger.Conway.Conformance.Utxow.L._.produced
d_produced_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
d_produced_2022 v0 ~v1 = du_produced_2022 v0
du_produced_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 -> AgdaAny
du_produced_2022 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2824 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.proposalDepositsΔ
d_proposalDepositsΔ_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2024 v0 ~v1 = du_proposalDepositsΔ_2024 v0
du_proposalDepositsΔ_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2024 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2420 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.refScriptsSize
d_refScriptsSize_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Integer
d_refScriptsSize_2026 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1974 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.totExUnits
d_totExUnits_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
d_totExUnits_2036 v0 ~v1 = du_totExUnits_2036 v0
du_totExUnits_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> AgdaAny
du_totExUnits_2036 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1896 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateCertDeposits
d_updateCertDeposits_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2038 v0 ~v1 = du_updateCertDeposits_2038 v0
du_updateCertDeposits_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2038 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2278 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateDeposits
d_updateDeposits_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2040 v0 ~v1 = du_updateDeposits_2040 v0
du_updateDeposits_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2040 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2368 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateProposalDeposits
d_updateProposalDeposits_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2042 v0 ~v1
  = du_updateProposalDeposits_2042 v0
du_updateProposalDeposits_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2042 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2356 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySize
d_utxoEntrySize_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2046 v0 ~v1 = du_utxoEntrySize_2046 v0
du_utxoEntrySize_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2046 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1910 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2048 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 -> Integer
d_utxoEntrySizeWithoutVal_2048 ~v0
  = du_utxoEntrySizeWithoutVal_2048
du_utxoEntrySizeWithoutVal_2048 :: Integer
du_utxoEntrySizeWithoutVal_2048 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxow.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2050 ~v0 ~v1
  = du_'8799''45''8709''7495'_2050
du_'8799''45''8709''7495'_2050 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2050 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2630 v1 v2
-- Ledger.Conway.Conformance.Utxow.L._.≟?
d_'8799''63'_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2052 ~v0 ~v1 = du_'8799''63'_2052
du_'8799''63'_2052 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2052 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3026 v1 v2 v3
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.pparams
d_pparams_2078 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2078 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1924 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.slot
d_slot_2080 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> AgdaAny
d_slot_2080 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1922 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.treasury
d_treasury_2082 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914 -> Integer
d_treasury_2082 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1926 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.deposits
d_deposits_2086 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2086 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.donations
d_donations_2088 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_donations_2088 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.fees
d_fees_2090 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 -> Integer
d_fees_2090 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1940 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.utxo
d_utxo_2092 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2092 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2124 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2124
  = C_UTXOW'45'inductive_2232 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> Maybe AgdaAny
d_txAD_2138 ~v0 ~v1 v2 = du_txAD_2138 v2
du_txAD_2138 :: T_GeneralizeTel_6919 -> Maybe AgdaAny
du_txAD_2138 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2638
      (coe d_'46'generalizedField'45'tx_6911 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_2140 ~v0 ~v1 v2 = du_body_2140 v2
du_body_2140 ::
  T_GeneralizeTel_6919 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
du_body_2140 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2632
      (coe d_'46'generalizedField'45'tx_6911 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_2142 ~v0 ~v1 v2 = du_wits_2142 v2
du_wits_2142 ::
  T_GeneralizeTel_6919 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
du_wits_2142 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2634
      (coe d_'46'generalizedField'45'tx_6911 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2152 ~v0 ~v1 v2 = du_refInputs_2152 v2
du_refInputs_2152 ::
  T_GeneralizeTel_6919 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2152 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> Maybe AgdaAny
d_txADhash_2158 ~v0 ~v1 v2 = du_txADhash_2158 v2
du_txADhash_2158 :: T_GeneralizeTel_6919 -> Maybe AgdaAny
du_txADhash_2158 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> AgdaAny
d_txid_2168 ~v0 ~v1 v2 = du_txid_2168 v2
du_txid_2168 :: T_GeneralizeTel_6919 -> AgdaAny
du_txid_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2172 ~v0 ~v1 v2 = du_txouts_2172 v2
du_txouts_2172 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2172 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2566
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2180 ~v0 ~v1 v2 = du_txvldt_2180 v2
du_txvldt_2180 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2180 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2188 ~v0 ~v1 v2 = du_scripts_2188 v2
du_scripts_2188 ::
  T_GeneralizeTel_6919 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2188 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2634
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2192 ~v0 ~v1 v2 = du_txdats_2192 v2
du_txdats_2192 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2192 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2616
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2634
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2196 ~v0 ~v1 v2 = du_vkSigs_2196 v2
du_vkSigs_2196 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2196 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2634
         (coe d_'46'generalizedField'45'tx_6911 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2206 ~v0 ~v1 v2 = du_utxo_2206 v2
du_utxo_2206 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2206 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1938
      (coe d_'46'generalizedField'45's_6913 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1714 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2258 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2258 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2258 v0 v1 v2
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2324 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2594
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2612
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.Hashable.d_hash_16
                             (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                (coe
                                   MAlonzo.Code.Ledger.Script.d_p1s_426
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                      (coe v0))))
                             v3)
                          (coe
                             MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2278 v0
                             (MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))
                             (MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1))))
                       (coe
                          MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                          (MAlonzo.Code.Ledger.Script.d_p1s_426
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v0)))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2612
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1)))))
                          (MAlonzo.Code.Ledger.Transaction.d_txvldt_2572
                             (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1)))
                          v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2732
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2)))))
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2612
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2276 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
                                (coe v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_398
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.Hashable.d_hash_16
                                      (coe
                                         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2614
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1))))))
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2278 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1)))
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
                                       MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2680
                                    (coe v0) (coe v1)
                                    (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2)))))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2278 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1)))
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
                                               MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                                  (coe v0))))
                                         (MAlonzo.Code.Ledger.Transaction.d_refScripts_2680
                                            (coe v0) (coe v1)
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2614
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1))))))
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
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
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
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2616
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1840 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))))
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
                                               MAlonzo.Code.Ledger.Script.d_ps_448
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1840 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1836
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2566
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1836
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2564
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2632
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2616
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v1)))))
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
                                            MAlonzo.Code.Ledger.Script.d_ps_448
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2140 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxow.du_languages_2124 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1938 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2586
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_6911 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_6911 v0
  = case coe v0 of
      C_mkGeneralizeTel_6921 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_6913 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
d_'46'generalizedField'45's_6913 v0
  = case coe v0 of
      C_mkGeneralizeTel_6921 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_6915 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914
d_'46'generalizedField'45'Γ_6915 v0
  = case coe v0 of
      C_mkGeneralizeTel_6921 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_6917 ::
  T_GeneralizeTel_6919 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
d_'46'generalizedField'45's''_6917 v0
  = case coe v0 of
      C_mkGeneralizeTel_6921 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_6919 a0 a1 = ()
data T_GeneralizeTel_6919
  = C_mkGeneralizeTel_6921 MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1914
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1928
