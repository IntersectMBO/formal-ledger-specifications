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

module MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch where

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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

import GHC.Generics (Generic)
data HsRewardUpdate = MkRewardUpdate
  { deltaT  :: Integer
  , deltaR  :: Integer
  , deltaF  :: Integer
  , rs      ::
      MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap
        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential
        Integer
  }
  deriving (Eq, Show)
data NewEpochState = MkNewEpochState {lastEpoch :: Integer, epochState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.EpochState, ru :: (Maybe MAlonzo.Code.Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate)}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.NewEpoch._.NewEpochState
d_NewEpochState_26 = ()
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate
d_RewardUpdate_28 = ()
-- Ledger.Foreign.HSLedger.NewEpoch._.NewEpochState.epochState
d_epochState_88 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302
d_epochState_88 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.NewEpochState.lastEpoch
d_lastEpoch_90 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 -> Integer
d_lastEpoch_90 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2334 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.NewEpochState.ru
d_ru_92 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242
d_ru_92 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2338 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate.rs
d_rs_96 ::
  MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_96 v0 = coe MAlonzo.Code.Ledger.Epoch.d_rs_2262 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate.zeroSum
d_zeroSum_98 ::
  MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_98 = erased
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δf
d_Δf_100 ::
  MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242 -> Integer
d_Δf_100 v0 = coe MAlonzo.Code.Ledger.Epoch.d_Δf_2260 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δr
d_Δr_102 ::
  MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242 -> Integer
d_Δr_102 v0 = coe MAlonzo.Code.Ledger.Epoch.d_Δr_2258 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.RewardUpdate.Δt
d_Δt_104 ::
  MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242 -> Integer
d_Δt_104 v0 = coe MAlonzo.Code.Ledger.Epoch.d_Δt_2256 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate
d_HsRewardUpdate_148 = ()
type T_HsRewardUpdate_148 = HsRewardUpdate
pattern C_HsRewardUpdate'46'constructor_255 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_HsRewardUpdate'46'constructor_255 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  T_HsRewardUpdate_148
check_HsRewardUpdate'46'constructor_255 = MkRewardUpdate
cover_HsRewardUpdate_148 :: HsRewardUpdate -> ()
cover_HsRewardUpdate_148 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δt
d_Δt_158 :: T_HsRewardUpdate_148 -> Integer
d_Δt_158 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δr
d_Δr_160 :: T_HsRewardUpdate_148 -> Integer
d_Δr_160 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate.Δf
d_Δf_162 :: T_HsRewardUpdate_148 -> Integer
d_Δf_162 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.NewEpoch.HsRewardUpdate.rs
d_rs_164 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_164 v0
  = case coe v0 of
      C_HsRewardUpdate'46'constructor_255 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.NewEpoch.HsTy-RewardUpdate
d_HsTy'45'RewardUpdate_166 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RewardUpdate_166 = erased
-- Ledger.Foreign.HSLedger.NewEpoch.Conv-RewardUpdate
d_Conv'45'RewardUpdate_168 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RewardUpdate_168
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              C_HsRewardUpdate'46'constructor_255
              (coe MAlonzo.Code.Ledger.Epoch.d_Δt_2256 (coe v0))
              (coe MAlonzo.Code.Ledger.Epoch.d_Δr_2258 (coe v0))
              (coe MAlonzo.Code.Ledger.Epoch.d_Δf_2260 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_to_18
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                       (coe
                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                          (coe
                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                          (coe
                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Ledger.Epoch.d_rs_2262 (coe v0)))))))
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
                                  (coe d_Δt_158 (coe v0)) (coe d_Δr_160 (coe v0)))
                               (coe d_Δf_162 (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
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
                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                    (coe v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                 (coe v1)))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                     (coe d_rs_164 (coe v0))))))
                         (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
                   -> if coe v2
                        then coe
                               seq (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268
                                  (d_Δt_158 (coe v0)) (d_Δr_160 (coe v0)) (d_Δf_162 (coe v0))
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                        (let v4
                                               = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                    (coe v4)))))
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                     (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                        (coe d_rs_164 (coe v0)))))
                        else coe
                               seq (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_error_10 erased
                                  ("Formal Spec: cannot make a non-zero reward update"
                                   ::
                                   Data.Text.Text))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Foreign.HSLedger.NewEpoch._.rs
d_rs_190 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_190 v0 = coe d_rs_164 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δf
d_Δf_192 :: T_HsRewardUpdate_148 -> Integer
d_Δf_192 v0 = coe d_Δf_162 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δr
d_Δr_194 :: T_HsRewardUpdate_148 -> Integer
d_Δr_194 v0 = coe d_Δr_160 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δt
d_Δt_196 :: T_HsRewardUpdate_148 -> Integer
d_Δt_196 v0 = coe d_Δt_158 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.rs
d_rs_208 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer
d_rs_208 v0 ~v1 = du_rs_208 v0
du_rs_208 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer
du_rs_208 v0 = coe d_rs_164 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δf
d_Δf_210 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δf_210 v0 ~v1 = du_Δf_210 v0
du_Δf_210 :: T_HsRewardUpdate_148 -> Integer
du_Δf_210 v0 = coe d_Δf_162 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δr
d_Δr_212 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δr_212 v0 ~v1 = du_Δr_212 v0
du_Δr_212 :: T_HsRewardUpdate_148 -> Integer
du_Δr_212 v0 = coe d_Δr_160 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch._.Δt
d_Δt_214 ::
  T_HsRewardUpdate_148 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_Δt_214 v0 ~v1 = du_Δt_214 v0
du_Δt_214 :: T_HsRewardUpdate_148 -> Integer
du_Δt_214 v0 = coe d_Δt_158 (coe v0)
-- Ledger.Foreign.HSLedger.NewEpoch.HsTy-NewEpochState
d_HsTy'45'NewEpochState_218 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'NewEpochState_218 = erased
-- Ledger.Foreign.HSLedger.NewEpoch.Conv-NewEpochState
d_Conv'45'NewEpochState_220 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'NewEpochState_220
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2340 v1 v2 v3
                -> coe
                     C_MkNewEpochState_2127 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                           (coe
                              MAlonzo.Code.Ledger.PParams.d_treasury_152
                              (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.PParams.d_reserves_154
                              (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                             (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_set_2294
                                             (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_set_2294
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_go_2296
                                             (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_go_2296
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_feeSS_2298
                              (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8293
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                          MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                          (coe
                                             MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                             (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                    (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v2))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                          (coe
                                             MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                             (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                    (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v2)))))
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
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                              (MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4809
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_dState_960
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_dState_960
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_rewards_924
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_dState_960
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_pools_934
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_pState_962
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_retiring_936
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_pState_962
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dreps_946
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_gState_964
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                             (coe
                                                MAlonzo.Code.Ledger.Certs.d_gState_964
                                                (coe
                                                   MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                      (coe v2)))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                         (coe v4)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                    (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v2)))))
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                    (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v2)))))
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
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                    (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                 (coe
                                    (\ v4 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                    (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v2)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                       (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v4)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_cc_864
                                       (coe
                                          MAlonzo.Code.Ledger.Ratify.d_es_2030
                                          (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2))))))
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
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_constitution_866
                                       (coe
                                          MAlonzo.Code.Ledger.Ratify.d_es_2030
                                          (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2))))))
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pv_868
                                       (coe
                                          MAlonzo.Code.Ledger.Ratify.d_es_2030
                                          (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2))))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_pparams_870
                                       (coe
                                          MAlonzo.Code.Ledger.Ratify.d_es_2030
                                          (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                          (coe
                                             MAlonzo.Code.Ledger.Ratify.d_es_2030
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                 (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                    (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2)))))
                           (coe
                              MAlonzo.Code.Ledger.Ratify.d_delay_2034
                              (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v2)))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'RewardUpdate_168))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkNewEpochState_2127 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2340
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                             (coe
                                                MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v5))
                                             (coe
                                                MAlonzo.Code.Ledger.PParams.d_reserves_154
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_set_2294
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_set_2294
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_go_2296
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                            (coe
                                                               MAlonzo.Code.Ledger.Epoch.d_go_2296
                                                               (coe v6)))))))
                                             (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v6)))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8293
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                            MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                      (coe v7)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                                   (coe
                                                      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                (MAlonzo.Code.Ledger.Ledger.d_govSt_2162 (coe v7)))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4809
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_rewards_924
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pools_934
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_pState_962
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_retiring_936
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_pState_962
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_dreps_946
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_gState_964
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Certs.d_gState_964
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                                     (coe v7))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                               (let v10
                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                              (coe v10))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                           (coe v10)))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v8))))
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
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_constitution_866
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v8))))
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                      (coe v8))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                                         (coe v8))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                  (let v10
                                                                         = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                              (coe v10)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_cc_864
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
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
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
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
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_pv_868
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                                            (coe
                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                   (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                      (coe v9))))
                                             (coe MAlonzo.Code.Ledger.Ratify.d_delay_2034 (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkEpochState_3005 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                                               (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
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
                                                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                                              (coe v12)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                                              (coe v13)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                                              (coe v13))))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshots_1411 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.C_MkSnapshot_135 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                        MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8293
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
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
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                                              MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                                     (coe v11))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_donations_1986
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4809
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_rewards_924
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_dState_960
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_pools_934
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_pState_962
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_retiring_936
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_pState_962
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_dreps_946
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_gState_964
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Certs.d_gState_964
                                                                                    (coe v13))))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8293 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
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
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
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
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
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
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                   (coe
                                                                                                      v19))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4809
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_rewards_924
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_pools_934
                                                                                                   (coe
                                                                                                      v16)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_retiring_936
                                                                                                   (coe
                                                                                                      v16))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_dreps_946
                                                                                                   (coe
                                                                                                      v17)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                                                                                   (coe
                                                                                                      v17))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4809 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2113 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                              (coe
                                                                                                                                 v22))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v21)))
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
                                                                                                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                                                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_950 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v19))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_363 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_950
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                              (coe
                                                                                                                                 v21))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                           (coe
                                                                                                                              v21)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                               (let v21
                                                                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                              (coe
                                                                                                                                 v21))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                           (coe
                                                                                                                              v21)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                                                            (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
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
                                                        MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                (coe
                                                                                                   v16))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                             (coe
                                                                                                v16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                          (coe
                                                                                             v16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                                                 (coe v16)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                        MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                    (let v14
                                                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                   (coe
                                                                                                      v14))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                (coe
                                                                                                   v14)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_cc_864
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
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_constitution_866
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_pv_868
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                     v12))
                                                               (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125 v15 v16 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                      (let v20
                                                                                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                     (coe
                                                                                                                        v20))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                  (coe
                                                                                                                     v20)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v18)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v19))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v15 v16 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                                   (let v20
                                                                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                               (coe
                                                                                                                  v20)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                                                                      (coe
                                                                                                         v20)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v20)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                                     (MAlonzo.Code.Ledger.Foreign.HSTypes.d_elems_36
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
                           (coe d_Conv'45'RewardUpdate_168))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.NewEpoch.newepoch-step
newEpochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_NewEpochState_2125
newEpochStep = coe d_newepoch'45'step_222
d_newepoch'45'step_222 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_NewEpochState_2125
d_newepoch'45'step_222 ~v0 = du_newepoch'45'step_222
du_newepoch'45'step_222 ::
  T_NewEpochState_2125 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_NewEpochState_2125
du_newepoch'45'step_222
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'NewEpochState_220)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'NewEpochState_220))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Epoch.Properties.du_Computational'45'NEWEPOCH_2340
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Foreign.HSLedger.NewEpoch.NewEpochState
d_NewEpochState_2125 = ()
type T_NewEpochState_2125 = NewEpochState
pattern C_MkNewEpochState_2127 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_MkNewEpochState_2127 ::
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.T_EpochState_3003 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_HsRewardUpdate_148 ->
  T_NewEpochState_2125
check_MkNewEpochState_2127 = MkNewEpochState
cover_NewEpochState_2125 :: NewEpochState -> ()
cover_NewEpochState_2125 x
  = case x of
      MkNewEpochState _ _ _ -> ()
