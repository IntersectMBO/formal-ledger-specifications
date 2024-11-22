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
d_Hashable'45'Script_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_182 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))
-- _.Tx
d_Tx_368 a0 = ()
-- _.isSigned
d_isSigned_498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_498 = erased
-- _.refScripts
d_refScripts_556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_556 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2730 (coe v0)
-- _.txscripts
d_txscripts_586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_586 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2782 (coe v0)
-- _.validP1Script
d_validP1Script_590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_590 = erased
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2686 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2688 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2652
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1512 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1526 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1528 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_1558 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1558 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_1560 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> AgdaAny
d_slot_1560 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_1562 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> Integer
d_treasury_1562 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1946 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_1566 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1566 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1962 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_1568 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_donations_1568 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1964 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_1570 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_fees_1570 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_1572 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1572 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1906 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_1908 ~v0 ~v1
  = du_Dec'45'HasInlineDatum_1908
du_Dec'45'HasInlineDatum_1908 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_1908
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'HasInlineDatum_2042
-- Ledger.Conway.Conformance.Utxow.L._.Dec-UsesV3Features
d_Dec'45'UsesV3Features_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_1910 ~v0 ~v1
  = du_Dec'45'UsesV3Features_1910
du_Dec'45'UsesV3Features_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_1910
  = coe MAlonzo.Code.Ledger.Utxow.du_Dec'45'UsesV3Features_2120
-- Ledger.Conway.Conformance.Utxow.L._.HasInlineDatum
d_HasInlineDatum_1914 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1926 v0 ~v1
  = du_UTXOW'45'inductive'45'premises_1926 v0
du_UTXOW'45'inductive'45'premises_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1926 v0
  = coe
      MAlonzo.Code.Ledger.Utxow.du_UTXOW'45'inductive'45'premises_2432
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UsesV3Features
d_UsesV3Features_1928 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_1930 v0 ~v1 = du_allowedLanguages_1930 v0
du_allowedLanguages_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_1930 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2160 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.credsNeeded
d_credsNeeded_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1932 v0 ~v1 = du_credsNeeded_1932 v0
du_credsNeeded_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1932 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_credsNeeded_2222 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.d
d_d_1934 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_1934 ~v0 v1 = du_d_1934 v1
du_d_1934 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_1934 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Utxow.L._.getScripts
d_getScripts_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getScripts_1936 ~v0 ~v1 = du_getScripts_1936
du_getScripts_1936 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getScripts_1936
  = coe MAlonzo.Code.Ledger.Utxow.du_getScripts_2220
-- Ledger.Conway.Conformance.Utxow.L._.getVKeys
d_getVKeys_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
d_getVKeys_1938 ~v0 ~v1 = du_getVKeys_1938
du_getVKeys_1938 ::
  [MAlonzo.Code.Ledger.Address.T_Credential_16] -> [AgdaAny]
du_getVKeys_1938 = coe MAlonzo.Code.Ledger.Utxow.du_getVKeys_2158
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_1940 v0 ~v1 = du_languages_1940 v0
du_languages_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_1940 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_languages_2144 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.scriptsNeeded
d_scriptsNeeded_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> [AgdaAny]
d_scriptsNeeded_1942 v0 ~v1 = du_scriptsNeeded_1942 v0
du_scriptsNeeded_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> [AgdaAny]
du_scriptsNeeded_1942 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2298 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.witsVKeyNeeded
d_witsVKeyNeeded_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> [AgdaAny]
d_witsVKeyNeeded_1944 v0 ~v1 = du_witsVKeyNeeded_1944 v0
du_witsVKeyNeeded_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> [AgdaAny]
du_witsVKeyNeeded_1944 v0
  = coe MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2296 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._._*↓_
d__'42''8595'__1966 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1966 ~v0 v1 v2 = du__'42''8595'__1966 v1 v2
du__'42''8595'__1966 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1966 v0 v1
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
d__'61''62''7495'__1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1968 ~v0 ~v1 = du__'61''62''7495'__1968
du__'61''62''7495'__1968 :: Bool -> Bool -> Bool
du__'61''62''7495'__1968
  = coe MAlonzo.Code.Ledger.Utxo.du__'61''62''7495'__2596
-- Ledger.Conway.Conformance.Utxow.L._._≡?_
d__'8801''63'__1970 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._._≤ᵇ_
d__'8804''7495'__1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1972 ~v0 ~v1 = du__'8804''7495'__1972
du__'8804''7495'__1972 :: Integer -> Integer -> Bool
du__'8804''7495'__1972
  = coe MAlonzo.Code.Ledger.Utxo.du__'8804''7495'__2602
-- Ledger.Conway.Conformance.Utxow.L._._≥ᵇ_
d__'8805''7495'__1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1974 ~v0 ~v1 = du__'8805''7495'__1974
du__'8805''7495'__1974 :: Integer -> Integer -> Bool
du__'8805''7495'__1974
  = coe MAlonzo.Code.Ledger.Utxo.du__'8805''7495'__2604
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1976 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1978 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow.L._.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_1980 v0 ~v1
  = du_Dec'45'ValidCertDeposits_1980 v0
du_Dec'45'ValidCertDeposits_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_1980 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_Dec'45'ValidCertDeposits_2262 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Dec-inInterval
d_Dec'45'inInterval_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1982 v0 ~v1 = du_Dec'45'inInterval_1982 v0
du_Dec'45'inInterval_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1982 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_2490 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxO
d_HasCoin'45'UTxO_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1984 v0 ~v1 = du_HasCoin'45'UTxO_1984 v0
du_HasCoin'45'UTxO_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1984 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxO_2010 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1986 v0 ~v1
  = du_HasCoin'45'UTxOState_1986 v0
du_HasCoin'45'UTxOState_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1986 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2592 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-No-premises
d_Scripts'45'No'45'premises_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_1990 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2982 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_1994 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2980 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTXO-premises
d_UTXO'45'premises_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_1998 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_3172 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv
d_UTxOEnv_2000 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState
d_UTxOState_2002 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow.L._.ValidCertDeposits
d_ValidCertDeposits_2004 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Utxow.L._.balance
d_balance_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2008 v0 ~v1 = du_balance_2008 v0
du_balance_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2008 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1984 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.cbalance
d_cbalance_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2012 v0 ~v1 = du_cbalance_2012 v0
du_cbalance_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2012 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1990 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.certDeposit
d_certDeposit_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2016 ~v0 ~v1 = du_certDeposit_2016
du_certDeposit_2016 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2016
  = coe MAlonzo.Code.Ledger.Utxo.du_certDeposit_2012
-- Ledger.Conway.Conformance.Utxow.L._.certRefund
d_certRefund_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
d_certRefund_2018 ~v0 ~v1 = du_certRefund_2018
du_certRefund_2018 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836]
du_certRefund_2018
  = coe MAlonzo.Code.Ledger.Utxo.du_certRefund_2030
-- Ledger.Conway.Conformance.Utxow.L._.coinPolicies
d_coinPolicies_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 -> [AgdaAny]
d_coinPolicies_2020 v0 ~v1 = du_coinPolicies_2020 v0
du_coinPolicies_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2020 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_coinPolicies_2620 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.consumed
d_consumed_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
d_consumed_2022 v0 ~v1 = du_consumed_2022 v0
du_consumed_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
du_consumed_2022 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2802 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositRefunds
d_depositRefunds_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
d_depositRefunds_2026 v0 ~v1 = du_depositRefunds_2026 v0
du_depositRefunds_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
du_depositRefunds_2026 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2786 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.depositsChange
d_depositsChange_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2028 v0 ~v1 = du_depositsChange_2028 v0
du_depositsChange_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2028 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositsChange_2460 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.feesOK
d_feesOK_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2034 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_feesOK_2626 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.getDataHashes
d_getDataHashes_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2036 ~v0 ~v1 = du_getDataHashes_2036
du_getDataHashes_2036 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2036
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1856
-- Ledger.Conway.Conformance.Utxow.L._.getInputHashes
d_getInputHashes_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2038 v0 ~v1 = du_getInputHashes_2038 v0
du_getInputHashes_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2038 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1860 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.inInterval
d_inInterval_2040 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Utxow.L._.isAdaOnlyᵇ
d_isAdaOnly'7495'_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2042 v0 ~v1 = du_isAdaOnly'7495'_2042 v0
du_isAdaOnly'7495'_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2042 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_isAdaOnly'7495'_2622 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2044 v0 ~v1
  = du_isTwoPhaseScriptAddress_2044 v0
du_isTwoPhaseScriptAddress_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2044 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_isTwoPhaseScriptAddress_1844 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.minfee
d_minfee_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Integer
d_minfee_2048 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.d_minfee_2002 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.newDeposits
d_newDeposits_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
d_newDeposits_2050 v0 ~v1 = du_newDeposits_2050 v0
du_newDeposits_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> Integer
du_newDeposits_2050 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2794 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.outs
d_outs_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2054 ~v0 ~v1 = du_outs_2054
du_outs_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2054 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1978
-- Ledger.Conway.Conformance.Utxow.L._.produced
d_produced_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
d_produced_2056 v0 ~v1 = du_produced_2056 v0
du_produced_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 -> AgdaAny
du_produced_2056 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2810 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.proposalDepositsΔ
d_proposalDepositsΔ_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2058 v0 ~v1 = du_proposalDepositsΔ_2058 v0
du_proposalDepositsΔ_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2058 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_proposalDepositsΔ_2406 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.refScriptsSize
d_refScriptsSize_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Integer
d_refScriptsSize_2060 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_1994 (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.totExUnits
d_totExUnits_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> AgdaAny
d_totExUnits_2070 v0 ~v1 = du_totExUnits_2070 v0
du_totExUnits_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> AgdaAny
du_totExUnits_2070 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_totExUnits_1916 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateCertDeposits
d_updateCertDeposits_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2072 v0 ~v1 = du_updateCertDeposits_2072 v0
du_updateCertDeposits_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2072 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_2264 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateDeposits
d_updateDeposits_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2074 v0 ~v1 = du_updateDeposits_2074 v0
du_updateDeposits_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2074 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2354 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.updateProposalDeposits
d_updateProposalDeposits_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2076 v0 ~v1
  = du_updateProposalDeposits_2076 v0
du_updateProposalDeposits_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2076 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_2342 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySize
d_utxoEntrySize_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2080 v0 ~v1 = du_utxoEntrySize_2080 v0
du_utxoEntrySize_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2080 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1930 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2082 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 -> Integer
d_utxoEntrySizeWithoutVal_2082 ~v0
  = du_utxoEntrySizeWithoutVal_2082
du_utxoEntrySizeWithoutVal_2082 :: Integer
du_utxoEntrySizeWithoutVal_2082 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxow.L._.≟-∅ᵇ
d_'8799''45''8709''7495'_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2084 ~v0 ~v1
  = du_'8799''45''8709''7495'_2084
du_'8799''45''8709''7495'_2084 ::
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2084 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''45''8709''7495'_2616 v1 v2
-- Ledger.Conway.Conformance.Utxow.L._.≟?
d_'8799''63'_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2086 ~v0 ~v1 = du_'8799''63'_2086
du_'8799''63'_2086 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2086 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Utxo.du_'8799''63'_3012 v1 v2 v3
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.pparams
d_pparams_2112 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2112 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1944 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.slot
d_slot_2114 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> AgdaAny
d_slot_2114 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1942 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOEnv.treasury
d_treasury_2116 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> Integer
d_treasury_2116 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1946 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.deposits
d_deposits_2120 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2120 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1962 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.donations
d_donations_2122 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_donations_2122 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1964 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.fees
d_fees_2124 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 -> Integer
d_fees_2124 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.UTxOState.utxo
d_utxo_2126 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2126 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v0)
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2158 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2158
  = C_UTXOW'45'inductive_2264 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> Maybe AgdaAny
d_txAD_2172 ~v0 ~v1 v2 = du_txAD_2172 v2
du_txAD_2172 :: T_GeneralizeTel_6443 -> Maybe AgdaAny
du_txAD_2172 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2688
      (coe d_'46'generalizedField'45'tx_6435 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570
d_body_2174 ~v0 ~v1 v2 = du_body_2174 v2
du_body_2174 ::
  T_GeneralizeTel_6443 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570
du_body_2174 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2682
      (coe d_'46'generalizedField'45'tx_6435 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2652
d_wits_2176 ~v0 ~v1 v2 = du_wits_2176 v2
du_wits_2176 ::
  T_GeneralizeTel_6443 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2652
du_wits_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2684
      (coe d_'46'generalizedField'45'tx_6435 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2186 ~v0 ~v1 v2 = du_refInputs_2186 v2
du_refInputs_2186 ::
  T_GeneralizeTel_6443 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2186 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> Maybe AgdaAny
d_txADhash_2192 ~v0 ~v1 v2 = du_txADhash_2192 v2
du_txADhash_2192 :: T_GeneralizeTel_6443 -> Maybe AgdaAny
du_txADhash_2192 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2636
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txid
d_txid_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> AgdaAny
d_txid_2202 ~v0 ~v1 v2 = du_txid_2202 v2
du_txid_2202 :: T_GeneralizeTel_6443 -> AgdaAny
du_txid_2202 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2644
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txouts
d_txouts_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2206 ~v0 ~v1 v2 = du_txouts_2206 v2
du_txouts_2206 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2206 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2616
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txvldt
d_txvldt_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2214 ~v0 ~v1 v2 = du_txvldt_2214 v2
du_txvldt_2214 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2214 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2622
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2682
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2222 ~v0 ~v1 v2 = du_scripts_2222 v2
du_scripts_2222 ::
  T_GeneralizeTel_6443 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2222 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2664
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2684
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2226 ~v0 ~v1 v2 = du_txdats_2226 v2
du_txdats_2226 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_2226 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2666
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2684
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2230 ~v0 ~v1 v2 = du_vkSigs_2230 v2
du_vkSigs_2230 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2230 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2684
         (coe d_'46'generalizedField'45'tx_6435 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2240 ~v0 ~v1 v2 = du_utxo_2240 v2
du_utxo_2240 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2240 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1958
      (coe d_'46'generalizedField'45's_6437 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2290 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_2290 v0 v2 v3
du_UTXOW'45'inductive'45'premises_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_2290 v0 v1 v2
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_txidBytes_2376 v0
                       (MAlonzo.Code.Ledger.Transaction.d_txid_2644
                          (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1)))))
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
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_548
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                           (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1)))))
                  (MAlonzo.Code.Ledger.Transaction.d_txvldt_2622
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_576
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2782
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2)))))
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_vkSigs_2662
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_2296 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Transaction.d_scripts_2664
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1))))))
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
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2298 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_398
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2730
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))))))
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_2298 v0
                                      (MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))
                                      (MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.Hashable.d_hash_16
                                         (coe
                                            MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Transaction.d_refScripts_2730
                                         (coe v0) (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2664
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1))))))
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
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
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
                                      MAlonzo.Code.Ledger.Transaction.d_txdats_2666
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1860 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))))
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
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                                  (coe v0))))))
                                   (coe v3)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__680
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1860 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2)))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__680
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1856
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_550
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2616
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1856
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
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2614
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2666
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v1)))))
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
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                               (coe v0))))
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.Ledger.Utxow.du_allowedLanguages_2160 (coe v0)
                                         (coe v1)
                                         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxow.du_languages_2144 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1958 (coe v2))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txADhash_2636
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v1)))
                              (coe
                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2688 (coe v1)))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_6435 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2672
d_'46'generalizedField'45'tx_6435 v0
  = case coe v0 of
      C_mkGeneralizeTel_6445 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_6437 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_'46'generalizedField'45's_6437 v0
  = case coe v0 of
      C_mkGeneralizeTel_6445 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_6439 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934
d_'46'generalizedField'45'Γ_6439 v0
  = case coe v0 of
      C_mkGeneralizeTel_6445 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_6441 ::
  T_GeneralizeTel_6443 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_'46'generalizedField'45's''_6441 v0
  = case coe v0 of
      C_mkGeneralizeTel_6445 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_6443 a0 a1 = ()
data T_GeneralizeTel_6443
  = C_mkGeneralizeTel_6445 MAlonzo.Code.Ledger.Transaction.T_Tx_2672
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
