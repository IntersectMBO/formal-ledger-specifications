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

module MAlonzo.Code.Ledger.Conway.Specification.PoolReap.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Epoch
d_Epoch_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_172 = erased
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__1972 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.PoolReapState
d_PoolReapState_1978 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.PoolReapState.acnt
d_acnt_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2562
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.PoolReapState.dState
d_dState_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1384
d_dState_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.PoolReapState.pState
d_pState_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400
d_pState_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.PoolReapState.utxoSt
d_utxoSt_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.POOLREAP-total
d_POOLREAP'45'total_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_POOLREAP'45'total_2028 v0 ~v1 v2 v3
  = du_POOLREAP'45'total_2028 v0 v2 v3
du_POOLREAP'45'total_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_POOLREAP'45'total_2028 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2570)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2458
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2452
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                           (coe v3)))))
               (let v3
                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v3)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2454
                        (let v4
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                   (coe v2) (coe v1) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                 (coe v4)))))
                     (let v4
                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516 (coe v4))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1160)
                           (let v5
                                  = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v5)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v6)))))
                                 (coe v1)))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2456
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                           (coe v3))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180
                  (coe
                     addInt
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                        (coe (\ v3 -> v3))
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                          (coe v0))))
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (let v4
                                           = \ v4 v5 ->
                                               coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1160)
                                                 v4 in
                                     coe
                                       (let v5
                                              = let v5
                                                      = coe
                                                          MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             (\ v5 ->
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1152
                                                                  (coe v5))) in
                                                coe
                                                  (let v6
                                                         = let v6
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                                           (coe v0))) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   erased v6)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1408
                                                                   (let v7
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                                              (coe v2) (coe v1) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                                            (coe v7)))))
                                                                (let v7
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v7)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                                                         (let v8
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                                                    (coe v2)
                                                                                    (coe v1) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                                                  (coe v8)))))
                                                                      (coe v1)))) in
                                                   coe (coe v5 v6)) in
                                        coe (coe v4 v5 erased))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2454
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v4))))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1396
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                   (coe v2) (coe v1) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2562
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                 (coe v3))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
                     (let v3
                            = coe
                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                (coe v2) (coe v1) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2562
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1586)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1392
                           (let v3
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                      (coe v2) (coe v1) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1394
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                          (let v5
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                   (coe v5)))))
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1396
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                            (coe v2) (coe v1) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                          (coe v3)))))
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v3)
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                (coe v0))))
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (let v4
                                                 = \ v4 v5 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1160)
                                                       v4 in
                                           coe
                                             (let v5
                                                    = let v5
                                                            = coe
                                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   (\ v5 ->
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1152
                                                                        (coe v5))) in
                                                      coe
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v6)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1408
                                                                         (let v7
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                                                    (coe v2)
                                                                                    (coe v1) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                                                  (coe v7)))))
                                                                      (let v7
                                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                                                                    (coe v0)) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                                                               (let v8
                                                                                      = coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                                                          (coe v2)
                                                                                          (coe
                                                                                             v1) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                                                        (coe v8)))))
                                                                            (coe v1)))) in
                                                         coe (coe v5 v6)) in
                                              coe (coe v4 v5 erased))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2454
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2560
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                   (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1396
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2564
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                   (coe v4))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1588)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (let v3
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1408
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                            (coe v2) (coe v1) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                          (coe v4)))))
                              (let v4
                                     = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v4)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                  (coe v2) (coe v1) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                (coe v5)))))
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1410
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                          (let v5
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                   (coe v5)))))
                                       (coe v1)))))
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1412
                                          (let v5
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_11567
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2566
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_11561
                                                   (coe v5)))))
                                       (coe v1))))))))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_POOLREAP_2612
         v2)
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.POOLREAP-complete
d_POOLREAP'45'complete_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2578 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_POOLREAP'45'complete_2032 = erased
-- Ledger.Conway.Specification.PoolReap.Properties.Computational._.POOLREAP-deterministic
d_POOLREAP'45'deterministic_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2578 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_POOLREAP'45'deterministic_2040 = erased
-- Ledger.Conway.Specification.PoolReap.Properties.Computational.POOLREAP-deterministic-≡
d_POOLREAP'45'deterministic'45''8801'_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2550 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2578 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_POOLREAP'45'deterministic'45''8801'_2054 = erased
