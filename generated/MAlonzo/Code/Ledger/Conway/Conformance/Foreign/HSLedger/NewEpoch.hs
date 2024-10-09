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

module MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

import GHC.Generics (Generic)
data HsRewardUpdate = MkRewardUpdate
  { deltaT  :: Integer
  , deltaR  :: Integer
  , deltaF  :: Integer
  , rs      ::
      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap
        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential
        Integer
  }
  deriving (Eq, Show)
data NewEpochState = MkNewEpochState {lastEpoch :: Integer, epochState :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.EpochState, ru :: (Maybe MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.NewEpochState
d_NewEpochState_30 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate
d_RewardUpdate_32 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.NewEpochState.epochState
d_epochState_92 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298
d_epochState_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.NewEpochState.lastEpoch
d_lastEpoch_94 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  Integer
d_lastEpoch_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2330
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.NewEpochState.ru
d_ru_96 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238
d_ru_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2334 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate.rs
d_rs_100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_rs_2258 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate.zeroSum
d_zeroSum_102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_102 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δf
d_Δf_104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238 ->
  Integer
d_Δf_104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δf_2256 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δr
d_Δr_106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238 ->
  Integer
d_Δr_106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δr_2254 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δt
d_Δt_108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238 ->
  Integer
d_Δt_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δt_2252 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate
d_HsRewardUpdate_152 = ()
type T_HsRewardUpdate_152 = HsRewardUpdate
pattern C_HsRewardUpdate'46'constructor_255 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_HsRewardUpdate'46'constructor_255 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  T_HsRewardUpdate_152
check_HsRewardUpdate'46'constructor_255 = MkRewardUpdate
cover_HsRewardUpdate_152 :: HsRewardUpdate -> ()
cover_HsRewardUpdate_152 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δt
d_Δt_162 :: T_HsRewardUpdate_152 -> Integer
d_Δt_162 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δr
d_Δr_164 :: T_HsRewardUpdate_152 -> Integer
d_Δr_164 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δf
d_Δf_166 :: T_HsRewardUpdate_152 -> Integer
d_Δf_166 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsRewardUpdate.rs
d_rs_168 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_168 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsTy-RewardUpdate
d_HsTy'45'RewardUpdate_170 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RewardUpdate_170 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.Conv-RewardUpdate
d_Conv'45'RewardUpdate_172 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RewardUpdate_172
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              C_HsRewardUpdate'46'constructor_255
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δt_2252 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δr_2254 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_Δf_2256 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_to_18
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                       (coe
                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_rs_2258
                          (coe v0)))))))
      (coe
         (\ v0 ->
            let v1
                  = coe
                      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                      (coe
                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℤ_28))
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'43'__276
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'43'__276
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                  (coe d_Δt_162 (coe v0)) (coe d_Δr_164 (coe v0)))
                               (coe d_Δf_166 (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1180
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                  (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                               (coe
                                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                               (coe (\ v1 -> v1))
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                     (let v1
                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                    (coe v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                 (coe v1)))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                     (coe d_rs_168 (coe v0))))))
                         (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
                   -> if coe v2
                        then coe
                               seq (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264
                                  (d_Δt_162 (coe v0)) (d_Δr_164 (coe v0)) (d_Δf_166 (coe v0))
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                        (let v4
                                               = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                    (coe v4)))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                     (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                        (coe d_rs_168 (coe v0)))))
                        else coe
                               seq (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_error_14
                                  erased
                                  ("Formal Spec: cannot make a non-zero reward update"
                                   ::
                                   Data.Text.Text))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.rs
d_rs_194 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_194 v0 = coe d_rs_168 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δf
d_Δf_196 :: T_HsRewardUpdate_152 -> Integer
d_Δf_196 v0 = coe d_Δf_166 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δr
d_Δr_198 :: T_HsRewardUpdate_152 -> Integer
d_Δr_198 v0 = coe d_Δr_164 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δt
d_Δt_200 :: T_HsRewardUpdate_152 -> Integer
d_Δt_200 v0 = coe d_Δt_162 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.rs
d_rs_212 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_212 v0 ~v1 = du_rs_212 v0
du_rs_212 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer
du_rs_212 v0 = coe d_rs_168 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δf
d_Δf_214 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δf_214 v0 ~v1 = du_Δf_214 v0
du_Δf_214 :: T_HsRewardUpdate_152 -> Integer
du_Δf_214 v0 = coe d_Δf_166 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δr
d_Δr_216 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δr_216 v0 ~v1 = du_Δr_216 v0
du_Δr_216 :: T_HsRewardUpdate_152 -> Integer
du_Δr_216 v0 = coe d_Δr_164 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch._.Δt
d_Δt_218 ::
  T_HsRewardUpdate_152 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δt_218 v0 ~v1 = du_Δt_218 v0
du_Δt_218 :: T_HsRewardUpdate_152 -> Integer
du_Δt_218 v0 = coe d_Δt_162 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.HsTy-NewEpochState
d_HsTy'45'NewEpochState_222 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'NewEpochState_222 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.Conv-NewEpochState
d_Conv'45'NewEpochState_224 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'NewEpochState_224
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2336 v1 v2 v3
                -> coe
                     C_MkNewEpochState_2127 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2310 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2310
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2294
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                            (coe
                                                               (\ v4 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1970
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1974
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1976
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                              () erased
                              (MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
                                                      (coe v2)))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                         (coe v4)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v4 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'RewardUpdate_172))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkNewEpochState_2127 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2336
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2294
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1970
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1972
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                      (coe v7)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1974
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1976
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                () erased () erased
                                                (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                     (coe v7))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                (coe
                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                               (let v10
                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                              (coe v10))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                           (coe v10)))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                (coe
                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                            (coe
                                                               (\ v10 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                            (coe
                                                               (\ v10 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                (coe
                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                (coe
                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                         (coe v8))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                  (let v10
                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                              (coe v10)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                               (coe
                                                                  (\ v10 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                               (coe
                                                                  (\ v10 ->
                                                                     coe
                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                      (coe v9))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkEpochState_3005 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                                               (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160
                                                               (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v5)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                                              (coe v12)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                                              (coe v13)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                                              (coe v13))))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshots_1411 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v6)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                (coe
                                                                                                   (\ v14 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1970
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1972
                                                                     (coe v11))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1974
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1976
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                                    (coe v13))))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                  (coe
                                                                                                                     (\ v19 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                             ()
                                                                                             erased
                                                                                             ()
                                                                                             erased
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                            (coe
                                                                                                               (\ v19 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                   (coe
                                                                                                      v19))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                                                   (coe
                                                                                                      v16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                                                   (coe
                                                                                                      v16))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                                                   (coe
                                                                                                      v17)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                                                   (coe
                                                                                                      v17)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                                                   (coe
                                                                                                      v17))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v19 v20 v21 v22
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297 v19 v20 v21 v22
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v23))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v23)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v23))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v23)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v23))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v23)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                        (coe
                                                                                                                           v23))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v22)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v15)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                        (coe
                                                                                                                           v22))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v17)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                (coe
                                                                                                   v16))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                             (coe
                                                                                                v16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v16 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v16 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                          (coe
                                                                                             v16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v11))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v12))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v13))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v14))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                                                 (coe v16)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                    (let v14
                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                   (coe
                                                                                                      v14))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                (coe
                                                                                                   v14)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                 (coe
                                                                                    (\ v14 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                 (coe
                                                                                    (\ v14 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                     v12))
                                                               (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v15 v16 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                      (let v20
                                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                     (coe
                                                                                                                        v20))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                  (coe
                                                                                                                     v20)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                   (coe
                                                                                                      (\ v20 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                   (coe
                                                                                                      (\ v20 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                          (coe
                                                                                             v18)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v19))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v15 v16 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                                   (let v20
                                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                               (coe
                                                                                                                  v20)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v15))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                                (coe
                                                                                                   (\ v20 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                (coe
                                                                                                   (\ v20 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v16))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v17))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v18))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v20
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                                                                      (coe
                                                                                                         v20)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v20)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v19)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_elems_40
                                                                        (coe v12))))
                                                               (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'RewardUpdate_172))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.newepoch-step
newEpochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_NewEpochState_2125
newEpochStep = coe d_newepoch'45'step_226
d_newepoch'45'step_226 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_NewEpochState_2125
d_newepoch'45'step_226 ~v0 = du_newepoch'45'step_226
du_newepoch'45'step_226 ::
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_NewEpochState_2125
du_newepoch'45'step_226
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'NewEpochState_224)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_90
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_22)
               (coe d_Conv'45'NewEpochState_224))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'NEWEPOCH_2340
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_888))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Conformance.Foreign.HSLedger.NewEpoch.NewEpochState
d_NewEpochState_2125 = ()
type T_NewEpochState_2125 = NewEpochState
pattern C_MkNewEpochState_2127 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_MkNewEpochState_2127 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.T_EpochState_3003 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_HsRewardUpdate_152 ->
  T_NewEpochState_2125
check_MkNewEpochState_2127 = MkNewEpochState
cover_NewEpochState_2125 :: NewEpochState -> ()
cover_NewEpochState_2125 x
  = case x of
      MkNewEpochState _ _ _ -> ()
