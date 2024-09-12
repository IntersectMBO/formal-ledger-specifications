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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.GovernanceActions.Properties
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Foreign.HSLedger.Enact.HSGovStructure
d_HSGovStructure_8 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_HSGovStructure_8
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
      (coe
         MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Enact._._+ᵉ_
d__'43''7497'__14 :: Integer -> Integer -> Integer
d__'43''7497'__14
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._._+ᵉ'_
d__'43''7497'''__16 :: Integer -> Integer -> Integer
d__'43''7497'''__16
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._._≥ᵉ_
d__'8805''7497'__18 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__18 = erased
-- Ledger.Foreign.HSLedger.Enact._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_20 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_20 = erased
-- Ledger.Foreign.HSLedger.Enact._.Acnt
d_Acnt_22 = ()
-- Ledger.Foreign.HSLedger.Enact._.Addr
d_Addr_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_24 = erased
-- Ledger.Foreign.HSLedger.Enact._.BaseAddr
d_BaseAddr_26 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Enact._.BootstrapAddr
d_BootstrapAddr_28 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Enact._.CostModel
d_CostModel_30 :: ()
d_CostModel_30 = erased
-- Ledger.Foreign.HSLedger.Enact._.Credential
d_Credential_32 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Enact._.T
d_T_34 :: ()
d_T_34 = erased
-- Ledger.Foreign.HSLedger.Enact._.THash
d_THash_36 :: ()
d_THash_36 = erased
-- Ledger.Foreign.HSLedger.Enact._.Dataʰ
d_Data'688'_38 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_38
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Datum
d_Datum_40 :: ()
d_Datum_40 = erased
-- Ledger.Foreign.HSLedger.Enact._.Dec-isScript
d_Dec'45'isScript_42 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_42 ~v0 ~v1 ~v2 = du_Dec'45'isScript_42
du_Dec'45'isScript_42 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_42
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Foreign.HSLedger.Enact._.Dec-isSigned
d_Dec'45'isSigned_44 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_44
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.Dec-isVKey
d_Dec'45'isVKey_46 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_46 ~v0 ~v1 ~v2 = du_Dec'45'isVKey_46
du_Dec'45'isVKey_46 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_46
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Foreign.HSLedger.Enact._.Dec-validP1Script
d_Dec'45'validP1Script_48 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_48
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Enact._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_50 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_50
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEQ-Prices
d_DecEQ'45'Prices_52 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_52
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_54 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_54 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Enact._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_56 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_56 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Enact._.DecEq-CostModel
d_DecEq'45'CostModel_58 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_58
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 v1 v2
  = du_DecEq'45'Credential_60 v1 v2
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Foreign.HSLedger.Enact._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_62 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_62
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_436
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Epoch
d_DecEq'45'Epoch_64 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_64
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-ExUnits
d_DecEq'45'ExUnits_66 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_66
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-LangDepView
d_DecEq'45'LangDepView_68 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_68
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Language
d_DecEq'45'Language_70 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_70
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Netw
d_DecEq'45'Netw_72 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_72
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-P1Script
d_DecEq'45'P1Script_74 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_74
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_76 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_76
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_442
-- Ledger.Foreign.HSLedger.Enact._.DecEq-PParams
d_DecEq'45'PParams_78 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_78
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_440
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_80 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_80
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_438
-- Ledger.Foreign.HSLedger.Enact._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_82 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_82 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Enact._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_84 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_84
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Ser
d_DecEq'45'Ser_86 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_86
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Sig
d_DecEq'45'Sig_88 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_88
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-Slot
d_DecEq'45'Slot_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_90
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-T
d_DecEq'45'T_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_92
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_454
                    (coe
                       MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-T
d_DecEq'45'T_94 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_94
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-THash
d_DecEq'45'THash_96 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_96
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-THash
d_DecEq'45'THash_98 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_98
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_454
                    (coe
                       MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-THash
d_DecEq'45'THash_100 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_100
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.DecEq-TxId
d_DecEq'45'TxId_102 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_102
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_534
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.DecEq-UpdT
d_DecEq'45'UpdT_104 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_104
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1240
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DecPo-Slot
d_DecPo'45'Slot_106 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_106
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.DocHash
d_DocHash_108 :: ()
d_DocHash_108 = erased
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds
d_DrepThresholds_110 = ()
-- Ledger.Foreign.HSLedger.Enact._.Epoch
d_Epoch_114 :: ()
d_Epoch_114 = erased
-- Ledger.Foreign.HSLedger.Enact._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_116 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_116
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.ExUnits
d_ExUnits_118 :: ()
d_ExUnits_118 = erased
-- Ledger.Foreign.HSLedger.Enact._.GovParams
d_GovParams_120 = ()
-- Ledger.Foreign.HSLedger.Enact._.Hash-Timelock
d_Hash'45'Timelock_124 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_124
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_438
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Hashable-P1Script
d_Hashable'45'P1Script_126 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_126
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Enact._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_128 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_128
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Hashable-Script
d_Hashable'45'Script_130 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_130
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.THash
d_THash_134 :: ()
d_THash_134 = erased
-- Ledger.Foreign.HSLedger.Enact._.KeyPair
d_KeyPair_138 :: ()
d_KeyPair_138 = erased
-- Ledger.Foreign.HSLedger.Enact._.LangDepView
d_LangDepView_140 :: ()
d_LangDepView_140 = erased
-- Ledger.Foreign.HSLedger.Enact._.Language
d_Language_142 :: ()
d_Language_142 = erased
-- Ledger.Foreign.HSLedger.Enact._.Network
d_Network_144 :: ()
d_Network_144 = erased
-- Ledger.Foreign.HSLedger.Enact._.NetworkId
d_NetworkId_148 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_148
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_150 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_150
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Number-Epoch
d_Number'45'Epoch_152 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_152
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.P1Script
d_P1Script_154 :: ()
d_P1Script_154 = erased
-- Ledger.Foreign.HSLedger.Enact._.PlutusScript
d_PlutusScript_156 :: ()
d_PlutusScript_156 = erased
-- Ledger.Foreign.HSLedger.Enact._.THash
d_THash_158 :: ()
d_THash_158 = erased
-- Ledger.Foreign.HSLedger.Enact._.PParamGroup
d_PParamGroup_160 = ()
-- Ledger.Foreign.HSLedger.Enact._.PParams
d_PParams_162 = ()
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff
d_PParamsDiff_164 = ()
-- Ledger.Foreign.HSLedger.Enact._.UpdateT
d_UpdateT_166 :: ()
d_UpdateT_166 = erased
-- Ledger.Foreign.HSLedger.Enact._.PlutusV1
d_PlutusV1_168 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_168
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.PlutusV2
d_PlutusV2_170 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_170
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.PlutusV3
d_PlutusV3_172 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_172
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds
d_PoolThresholds_174 = ()
-- Ledger.Foreign.HSLedger.Enact._.Prices
d_Prices_176 :: ()
d_Prices_176 = erased
-- Ledger.Foreign.HSLedger.Enact._.ProtVer
d_ProtVer_178 :: ()
d_ProtVer_178 = erased
-- Ledger.Foreign.HSLedger.Enact._.Quorum
d_Quorum_180 :: Integer
d_Quorum_180
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Redeemer
d_Redeemer_182 :: ()
d_Redeemer_182 = erased
-- Ledger.Foreign.HSLedger.Enact._.RwdAddr
d_RwdAddr_184 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Enact._.SKey
d_SKey_188 :: ()
d_SKey_188 = erased
-- Ledger.Foreign.HSLedger.Enact._.Script
d_Script_190 :: ()
d_Script_190 = erased
-- Ledger.Foreign.HSLedger.Enact._.ScriptAddr
d_ScriptAddr_192 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_192 = erased
-- Ledger.Foreign.HSLedger.Enact._.ScriptBaseAddr
d_ScriptBaseAddr_194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_194 = erased
-- Ledger.Foreign.HSLedger.Enact._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_196 = erased
-- Ledger.Foreign.HSLedger.Enact._.ScriptHash
d_ScriptHash_198 :: ()
d_ScriptHash_198 = erased
-- Ledger.Foreign.HSLedger.Enact._.Ser
d_Ser_204 :: ()
d_Ser_204 = erased
-- Ledger.Foreign.HSLedger.Enact._.Show-CostModel
d_Show'45'CostModel_206 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_206
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Show-Credential
d_Show'45'Credential_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_208 ~v0 ~v1 ~v2 = du_Show'45'Credential_208
du_Show'45'Credential_208 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_208 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Foreign.HSLedger.Enact._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_210 ~v0 ~v1 ~v2
  = du_Show'45'Credential'215'Coin_210
du_Show'45'Credential'215'Coin_210 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Foreign.HSLedger.Enact._.Show-DrepThresholds
d_Show'45'DrepThresholds_212 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_212
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_444
-- Ledger.Foreign.HSLedger.Enact._.Show-Epoch
d_Show'45'Epoch_214 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_214
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Show-ExUnits
d_Show'45'ExUnits_216 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_216
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Show-Network
d_Show'45'Network_218 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_218
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Show-PParams
d_Show'45'PParams_220 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_220
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_448
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Show-PoolThresholds
d_Show'45'PoolThresholds_222 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_222
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_446
-- Ledger.Foreign.HSLedger.Enact._.Show-Prices
d_Show'45'Prices_224 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_224
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Show-ProtVer
d_Show'45'ProtVer_226 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_226
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Foreign.HSLedger.Enact._.Show-RwdAddr
d_Show'45'RwdAddr_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_228 ~v0 ~v1 ~v2 = du_Show'45'RwdAddr_228
du_Show'45'RwdAddr_228 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_228
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Foreign.HSLedger.Enact._.Show-ScriptHash
d_Show'45'ScriptHash_230 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_230
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Show-THash
d_Show'45'THash_232 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_232
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.Show-THash
d_Show'45'THash_234 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_234
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_454
                    (coe
                       MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.Show-THash
d_Show'45'THash_236 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_236
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.Show-ℚ
d_Show'45'ℚ_238 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_238
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Foreign.HSLedger.Enact._.Sig
d_Sig_240 :: ()
d_Sig_240 = erased
-- Ledger.Foreign.HSLedger.Enact._.Slot
d_Slot_242 :: ()
d_Slot_242 = erased
-- Ledger.Foreign.HSLedger.Enact._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_244 :: Integer
d_SlotsPerEpoch'7580'_244
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Slotʳ
d_Slot'691'_246 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_246
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.StabilityWindow
d_StabilityWindow_248 :: Integer
d_StabilityWindow_248
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.StabilityWindowᶜ
d_StabilityWindow'7580'_250 :: Integer
d_StabilityWindow'7580'_250
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.T-Hashable
d_T'45'Hashable_252 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_252
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.T-Hashable
d_T'45'Hashable_254 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_254
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_454
                    (coe
                       MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.T-Hashable
d_T'45'Hashable_256 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_256
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.T-isHashable
d_T'45'isHashable_258 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_258
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_454
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
                  (coe v0)))))
-- Ledger.Foreign.HSLedger.Enact._.TxId
d_TxId_262 :: ()
d_TxId_262 = erased
-- Ledger.Foreign.HSLedger.Enact._.VKey
d_VKey_264 :: ()
d_VKey_264 = erased
-- Ledger.Foreign.HSLedger.Enact._.VKeyAddr
d_VKeyAddr_266 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_266 = erased
-- Ledger.Foreign.HSLedger.Enact._.VKeyBaseAddr
d_VKeyBaseAddr_268 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_268 = erased
-- Ledger.Foreign.HSLedger.Enact._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_270 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_270 = erased
-- Ledger.Foreign.HSLedger.Enact._.addEpoch
d_addEpoch_274 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_274
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.addSlot
d_addSlot_276 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_276
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.applyUpdate
d_applyUpdate_278 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_278
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.crypto
d_crypto_284 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_284
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.epoch
d_epoch_286 :: Integer -> Integer
d_epoch_286
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.epochStructure
d_epochStructure_288 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_288
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.firstSlot
d_firstSlot_290 :: Integer -> Integer
d_firstSlot_290
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.getScriptHash
d_getScriptHash_292 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_292 ~v0 ~v1 ~v2 = du_getScriptHash_292
du_getScriptHash_292 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
du_getScriptHash_292
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Foreign.HSLedger.Enact._.globalConstants
d_globalConstants_294 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_294
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.govParams
d_govParams_296 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1180
d_govParams_296
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.hashRespectsUnion
d_hashRespectsUnion_298 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_298
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.isBootstrapAddr
d_isBootstrapAddr_300 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Enact._.isBootstrapAddr?
d_isBootstrapAddr'63'_302 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_302 ~v0 ~v1 ~v2 = du_isBootstrapAddr'63'_302
du_isBootstrapAddr'63'_302 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_302
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Foreign.HSLedger.Enact._.isKeyHash
d_isKeyHash_304 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_304 = erased
-- Ledger.Foreign.HSLedger.Enact._.isKeyHashObj
d_isKeyHashObj_306 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_306 ~v0 ~v1 ~v2 = du_isKeyHashObj_306
du_isKeyHashObj_306 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isKeyHashObj_306
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Foreign.HSLedger.Enact._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_308 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_308 ~v0 ~v1 ~v2 = du_isKeyHashObj'7495'_308
du_isKeyHashObj'7495'_308 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_308
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Foreign.HSLedger.Enact._.isKeyPair
d_isKeyPair_310 :: Integer -> Integer -> ()
d_isKeyPair_310 = erased
-- Ledger.Foreign.HSLedger.Enact._.isScript
d_isScript_312 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Enact._.isScriptAddr
d_isScriptAddr_314 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_314 = erased
-- Ledger.Foreign.HSLedger.Enact._.isScriptObj
d_isScriptObj_316 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_316 ~v0 ~v1 ~v2 = du_isScriptObj_316
du_isScriptObj_316 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isScriptObj_316
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Foreign.HSLedger.Enact._.isScriptRwdAddr
d_isScriptRwdAddr_318 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_318 = erased
-- Ledger.Foreign.HSLedger.Enact._.isSigned
d_isSigned_320 :: Integer -> Integer -> Integer -> ()
d_isSigned_320 = erased
-- Ledger.Foreign.HSLedger.Enact._.isSigned-correct
d_isSigned'45'correct_322 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_322 = erased
-- Ledger.Foreign.HSLedger.Enact._.isVKey
d_isVKey_324 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Enact._.isVKeyAddr
d_isVKeyAddr_326 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_326 = erased
-- Ledger.Foreign.HSLedger.Enact._.khs
d_khs_328 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_328
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.language
d_language_330 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_330
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.netId
d_netId_332 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_332 ~v0 ~v1 ~v2 = du_netId_332
du_netId_332 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_netId_332 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Foreign.HSLedger.Enact._.p1s
d_p1s_334 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_334
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_440
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.paramsWellFormed
d_paramsWellFormed_336 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_336 = erased
-- Ledger.Foreign.HSLedger.Enact._.payCred
d_payCred_338 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_338 ~v0 ~v1 ~v2 = du_payCred_338
du_payCred_338 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_338 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Foreign.HSLedger.Enact._.pkk
d_pkk_340 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_340
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.ppHashingScheme
d_ppHashingScheme_342 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_342
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.ppUpd
d_ppUpd_344 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148
d_ppUpd_344
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.ppWF?
d_ppWF'63'_346 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_346
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.ppdWellFormed
d_ppdWellFormed_348 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> ()
d_ppdWellFormed_348 = erased
-- Ledger.Foreign.HSLedger.Enact._.preoEpoch
d_preoEpoch_350 :: MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_350
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.ps
d_ps_352 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_352
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.pvCanFollow
d_pvCanFollow_354 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Enact._.pvCanFollow?
d_pvCanFollow'63'_356 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_356
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1100
-- Ledger.Foreign.HSLedger.Enact._.scriptStructure
d_scriptStructure_358 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402
d_scriptStructure_358
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
      (coe d_HSGovStructure_8)
-- Ledger.Foreign.HSLedger.Enact._.sign
d_sign_360 :: Integer -> Integer -> Integer
d_sign_360
  = let v0 = d_HSGovStructure_8 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Enact._.stakeCred
d_stakeCred_362 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_362 ~v0 ~v1 ~v2 = du_stakeCred_362
du_stakeCred_362 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_362 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Foreign.HSLedger.Enact._.sucᵉ
d_suc'7497'_364 :: Integer -> Integer
d_suc'7497'_364
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.toData
d_toData_366 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_366
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
               (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.updateGroups
d_updateGroups_368 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_368
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1166
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
            (coe
               MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1020 (coe v0))))
-- Ledger.Foreign.HSLedger.Enact._.validP1Script
d_validP1Script_370 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_370 = erased
-- Ledger.Foreign.HSLedger.Enact._.validPlutusScript
d_validPlutusScript_372 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_372 = erased
-- Ledger.Foreign.HSLedger.Enact._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_374 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_374 = erased
-- Ledger.Foreign.HSLedger.Enact._.ℕEpochStructure
d_ℕEpochStructure_376 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_376
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.ℕtoEpoch
d_ℕtoEpoch_378 :: Integer -> Integer
d_ℕtoEpoch_378
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.Acnt.reserves
d_reserves_384 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_384 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.Acnt.treasury
d_treasury_386 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_386 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BaseAddr.net
d_net_390 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_390 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BaseAddr.pay
d_pay_392 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_392 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BaseAddr.stake
d_stake_394 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_394 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BootstrapAddr.attrsSize
d_attrsSize_398 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_398 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BootstrapAddr.net
d_net_400 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_400 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.BootstrapAddr.pay
d_pay_402 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_402 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P1
d_P1_412 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_412 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P2a
d_P2a_414 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_414 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P2b
d_P2b_416 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_416 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P3
d_P3_418 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_418 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P4
d_P4_420 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_420 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P5a
d_P5a_422 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_422 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P5b
d_P5b_424 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_424 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P5c
d_P5c_426 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_426 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P5d
d_P5d_428 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_428 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.DrepThresholds.P6
d_P6_430 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_430 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.GovParams.DecEq-T
d_DecEq'45'T_434 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_434 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.DecEq-THash
d_DecEq'45'THash_436 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_436 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_438 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_438 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1240 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.GovParams.THash
d_THash_440 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> ()
d_THash_440 = erased
-- Ledger.Foreign.HSLedger.Enact._.GovParams.UpdateT
d_UpdateT_442 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> ()
d_UpdateT_442 = erased
-- Ledger.Foreign.HSLedger.Enact._.GovParams.Show-THash
d_Show'45'THash_444 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_444 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.T-Hashable
d_T'45'Hashable_446 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_446 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.applyUpdate
d_applyUpdate_448 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_448 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.ppHashingScheme
d_ppHashingScheme_450 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_450 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.GovParams.ppUpd
d_ppUpd_452 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148
d_ppUpd_452 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.GovParams.ppWF?
d_ppWF'63'_454 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_454 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.GovParams.ppdWellFormed
d_ppdWellFormed_456 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> AgdaAny -> ()
d_ppdWellFormed_456 = erased
-- Ledger.Foreign.HSLedger.Enact._.GovParams.updateGroups
d_updateGroups_458 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_458 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1166
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Foreign.HSLedger.Enact._.PParams.Emax
d_Emax_474 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_474 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.a
d_a_476 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_476 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.a0
d_a0_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_478 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.b
d_b_480 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_480 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.ccMaxTermLength
d_ccMaxTermLength_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.ccMinSize
d_ccMinSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.collateralPercentage
d_collateralPercentage_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_488 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.costmdls
d_costmdls_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.drepActivity
d_drepActivity_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.drepDeposit
d_drepDeposit_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.drepThresholds
d_drepThresholds_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.govActionDeposit
d_govActionDeposit_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.govActionLifetime
d_govActionLifetime_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.keyDeposit
d_keyDeposit_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxBlockExUnits
d_maxBlockExUnits_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxBlockSize
d_maxBlockSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxCollateralInputs
d_maxCollateralInputs_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_508 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxHeaderSize
d_maxHeaderSize_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxTxExUnits
d_maxTxExUnits_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxTxSize
d_maxTxSize_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.maxValSize
d_maxValSize_516 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_516 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_518 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.minUTxOValue
d_minUTxOValue_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.nopt
d_nopt_522 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_522 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.poolDeposit
d_poolDeposit_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_524 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.poolThresholds
d_poolThresholds_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_526 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.prices
d_prices_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_528 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParams.pv
d_pv_530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_530 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff.UpdateT
d_UpdateT_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 -> ()
d_UpdateT_534 = erased
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff.applyUpdate
d_applyUpdate_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_536 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff.ppWF?
d_ppWF'63'_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_538 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_540 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 -> AgdaAny -> ()
d_ppdWellFormed_540 = erased
-- Ledger.Foreign.HSLedger.Enact._.PParamsDiff.updateGroups
d_updateGroups_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_542 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1166 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate._?↗_
d__'63''8599'__546 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__546 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__916 v1 v2
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_548 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_548
  = let v0 = d_HSGovStructure_8 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1094
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_scriptStructure_624
            (coe v0)))
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_550 = ()
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_552
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_964
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_554
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_900
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_556 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesEconomicGroup_556
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_708
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_558 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesGovernanceGroup_558
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_836
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_560 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesNetworkGroup_560
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_644
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_562 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesTechnicalGroup_562
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_772
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_564 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> ()
d_paramsUpdateWellFormed_564 = erased
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_566
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_640
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.≡-update
d_'8801''45'update_568 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_568 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_930 v1
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_572 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_Emax_572 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_546 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.a
d_a_574 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_a_574 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_528 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.a0
d_a0_576 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_576 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_544 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.b
d_b_578 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_b_578 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_530 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_580 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_568 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_582 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_582 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_566 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_584 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_584 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_586 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_586 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_550 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_588 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_588 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_552 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_590 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_drepActivity_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_564 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_592 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_562 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_554 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_596 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_560 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_558 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_600 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_600 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_602 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_524 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_604 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_604 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_512 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_606 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_606 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_520 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_608 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_608 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_516 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_610 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_610 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_522 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_612 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_612 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_514 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_614 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_614 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_518 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_616 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_616 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_538
      (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_618 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_618 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_542 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_620 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_nopt_620 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_548 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_622 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_534 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_624 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_556 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.prices
d_prices_626 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_626 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_540 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PParamsUpdate.PParamsUpdate.pv
d_pv_628 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_628 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_526 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds.Q1
d_Q1_632 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_632 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds.Q2a
d_Q2a_634 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_634 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds.Q2b
d_Q2b_636 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_636 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds.Q4
d_Q4_638 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_638 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.PoolThresholds.Q5e
d_Q5e_640 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_640 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.RwdAddr.net
d_net_644 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_644 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.RwdAddr.stake
d_stake_646 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_646 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactEnv
d_EnactEnv_684 = ()
-- Ledger.Foreign.HSLedger.Enact._.EnactState
d_EnactState_686 = ()
-- Ledger.Foreign.HSLedger.Enact._.EnactEnv.epoch
d_epoch_714 :: MAlonzo.Code.Ledger.Enact.T_EnactEnv_814 -> Integer
d_epoch_714 v0 = coe MAlonzo.Code.Ledger.Enact.d_epoch_826 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactEnv.gid
d_gid_716 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_716 v0 = coe MAlonzo.Code.Ledger.Enact.d_gid_822 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactEnv.treasury
d_treasury_718 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_814 -> Integer
d_treasury_718 v0
  = coe MAlonzo.Code.Ledger.Enact.d_treasury_824 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactState.cc
d_cc_722 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_722 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactState.constitution
d_constitution_724 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_724 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactState.pparams
d_pparams_726 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_726 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactState.pv
d_pv_728 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_728 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._.EnactState.withdrawals
d_withdrawals_730 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_730 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Foreign.HSLedger.Enact._
d___736 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d___736
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_30
-- Ledger.Foreign.HSLedger.Enact.Convertible-EnactState
d_Convertible'45'EnactState_738 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'EnactState_738
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe d_HSGovStructure_8))) in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe d_HSGovStructure_8)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v6) (coe v7))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                    (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                     (coe d_HSGovStructure_8))) in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                     (coe d_HSGovStructure_8)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                             (coe v6) (coe v7))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                 (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v3))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v6
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                         (coe d_HSGovStructure_8)) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                               (coe d_HSGovStructure_8))) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                            (coe
                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                               (coe d_HSGovStructure_8)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v6)
                                       (coe v7) (coe v8)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Enact.Convertible-EnactEnv
d_Convertible'45'EnactEnv_740 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'EnactEnv_740
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_828 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactEnv'46'constructor_11469
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (coe v1)))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactEnv'46'constructor_11469 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_828
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Enact.Convertible-GovAction
d_Convertible'45'GovAction_742 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'GovAction_742
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_NoConfidence_586
              MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UpdateCommittee_588
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                     -> coe
                                          MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 (coe v5)
                                          (coe addInt (coe (1 :: Integer)) (coe v6))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v5 v6
                                     -> case coe v6 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v5) (coe v6)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_NewConstitution_590
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        v2)
              MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702 v1
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TriggerHF_592
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (coe
                              (\ v2 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (coe v1)))
              MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704 v1
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_ChangePParams_594
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v2 ->
                                 coe
                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParamsUpdate'46'constructor_7629
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_a_528 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_b_530 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxBlockSize_512 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxTxSize_514 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_516 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_keyDeposit_532 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_poolDeposit_534 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_Emax_546 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_nopt_548 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_pv_526 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_minUTxOValue_542 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_536 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.PParams.d_costmdls_552 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.PParams.d_prices_540 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_522 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_524 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxValSize_518 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_520
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolThresholds_182))
                                      (MAlonzo.Code.Ledger.PParams.d_poolThresholds_556 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DrepThresholds_130))
                                      (MAlonzo.Code.Ledger.PParams.d_drepThresholds_554 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_ccMinSize_566 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_568 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_govActionLifetime_558
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_govActionDeposit_560 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_drepDeposit_562 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_drepActivity_564 (coe v2)))))
                           (coe
                              (\ v2 ->
                                 coe
                                   MAlonzo.Code.Ledger.PParams.C_PParamsUpdate'46'constructor_614935
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_466
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_468
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_470
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_494
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_496
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_490
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_492
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_480 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_462 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_464 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_keyDeposit_472
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_474
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOByte_484
                                         (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_488
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_482
                                         (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_476 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_nopt_478 (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_486
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DrepThresholds_130))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepVotingThresholds_500
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolThresholds_182))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolVotingThresholds_498
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_506
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_508
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_510
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_512
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_502
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_504
                                         (coe v2))))))
                        v1)
              MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706 v1
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TreasuryWdrl_596
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Info_598
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_NoConfidence_586
                -> coe MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UpdateCommittee_588 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v4 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                            coe
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v4)
                                    (coe v5))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v1)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70))
                           v2))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                     -> coe
                                          MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 (coe v5)
                                          (coe addInt (coe (1 :: Integer)) (coe v6))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v5 v6
                                     -> case coe v6 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v5) (coe v6)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_NewConstitution_590 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        v2)
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TriggerHF_592 v1
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (coe
                           (\ v2 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_ChangePParams_594 v1
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v2 ->
                                 coe
                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParamsUpdate'46'constructor_7629
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_a_528 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_b_530 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxBlockSize_512 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxTxSize_514 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_516 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_keyDeposit_532 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_poolDeposit_534 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_Emax_546 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_nopt_548 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_pv_526 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_minUTxOValue_542 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_536 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.PParams.d_costmdls_552 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.PParams.d_prices_540 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_522 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_524 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxValSize_518 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_520
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolThresholds_182))
                                      (MAlonzo.Code.Ledger.PParams.d_poolThresholds_556 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DrepThresholds_130))
                                      (MAlonzo.Code.Ledger.PParams.d_drepThresholds_554 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_ccMinSize_566 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_568 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_govActionLifetime_558
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_govActionDeposit_560 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_drepDeposit_562 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.PParams.d_drepActivity_564 (coe v2)))))
                           (coe
                              (\ v2 ->
                                 coe
                                   MAlonzo.Code.Ledger.PParams.C_PParamsUpdate'46'constructor_614935
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_466
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_468
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_470
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_494
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_496
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_490
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_492
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_480 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_462 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_464 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_keyDeposit_472
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_474
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOByte_484
                                         (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_488
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_482
                                         (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_476 (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_nopt_478 (coe v2)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                            (coe
                                               (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                            (coe
                                               (\ v3 ->
                                                  coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_486
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DrepThresholds_130))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepVotingThresholds_500
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolThresholds_182))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolVotingThresholds_498
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_506
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_508
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_510
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_512
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_502
                                         (coe v2)))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                         (coe
                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_504
                                         (coe v2))))))
                        v1)
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TreasuryWdrl_596 v1
                -> coe
                     MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v2
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSGlobalConstants_252) in
                            coe
                              (let v3 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v4 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v2)
                                       (coe v3) (coe v4)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v1)))
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Info_598
                -> coe MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Enact.enact-step
enactStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactEnv_904 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactState_538 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovAction_584 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactState_538
enactStep = coe d_enact'45'step_744
d_enact'45'step_744 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactEnv_904 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactState_538 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovAction_584 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EnactState_538
d_enact'45'step_744 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'EnactState_738)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe d_Convertible'45'GovAction_742)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___736) (coe d_Convertible'45'EnactState_738))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_900
            (coe d_HSGovStructure_8))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            d_Convertible'45'EnactEnv_740 v0))
