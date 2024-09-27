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

module MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.DecEq-Credential
d_DecEq'45'Credential_60 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_60 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_60 v2 v3
du_DecEq'45'Credential_60 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_60 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe v0) (coe v1)
-- _.Show-Credential
d_Show'45'Credential_208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_208 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_208
du_Show'45'Credential_208 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
      v1 v2
-- _.Show-Credential×Coin
d_Show'45'Credential'215'Coin_210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_210 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_210
du_Show'45'Credential'215'Coin_210 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
      v1 v2
-- _.isKeyHash
d_isKeyHash_304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  ()
d_isKeyHash_304 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__840 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__842 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__844 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__846 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__848 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__850 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv
d_CertEnv_860 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_880 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.epoch
d_epoch_976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.pp
d_pp_978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.votes
d_votes_980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.CertEnv.wdrls
d_wdrls_982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1054 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1054 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1060 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1060 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1072 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7496''7497'_986 v2 v3
             -> coe
                  (\ v4 ->
                     case coe v4 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v5 v6 v7 v8
                         -> coe
                              (\ v9 ->
                                 let v10
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in DELEG"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v9 of
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_874 v11 v12 v13 v14
                                        -> let v15
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                          (coe v15) (coe v16))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
                                                                 (coe v2))))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                          (coe v15) (coe v16))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                 (coe v14) (coe (0 :: Integer))))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                          (coe v0)))))
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_map_386
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
                                           coe
                                             (case coe v15 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                  -> if coe v16
                                                       then case coe v17 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v11) (coe v12)
                                                                                 (coe v5)))
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v11) (coe v13)
                                                                                 (coe v6)))
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                              (coe v0) (coe v9)
                                                                              (coe v8)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1166
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v18
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v19))))
                                                                                     (coe v11)
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                        (coe v7)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
                                                                                     (coe v2))))
                                                                            erased in
                                                                  coe
                                                                    (case coe v18 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                         -> coe
                                                                              ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.Conway.Conformance.PParams.PParams.keyDeposit pp)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                         -> let v20
                                                                                  = coe
                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                            (let v20
                                                                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v21
                                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                             (coe
                                                                                                                v0)) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                     (coe
                                                                                                        v20)
                                                                                                     (coe
                                                                                                        v21))))
                                                                                            (coe
                                                                                               v11)
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                               (coe
                                                                                                  v7)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                            (coe
                                                                                               v14)
                                                                                            (coe
                                                                                               (0 ::
                                                                                                  Integer))))
                                                                                      erased in
                                                                            coe
                                                                              (case coe v20 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                   -> coe
                                                                                        ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                   -> coe
                                                                                        ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  Interface.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_dereg_876 v11 v12
                                        -> let v13
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (let v13
                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                       (coe v13) (coe v14))))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v11) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v7)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                 (coe v0))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CredentialDeposit_842
                                                                 (coe v11))
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v8)))) in
                                           coe
                                             (case coe v13 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                  -> if coe v14
                                                       then case coe v15 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe v5)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe v6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v7)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                              (coe v0) (coe v9)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                    (coe v8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v8)))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1168
                                                                           v16))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v16
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                  () erased ()
                                                                                  erased
                                                                                  (let v16
                                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v17
                                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              v17))))
                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe v11)
                                                                                  (coe
                                                                                     (0 ::
                                                                                        Integer)))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                  (coe v7)))
                                                                            erased in
                                                                  coe
                                                                    (case coe v16 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v10))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1150 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regpool_878 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                             (coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                      (coe v2)))) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                          -> if coe v8
                               then coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                         (coe
                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                (coe v0))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased v10)
                                                     (coe
                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                        (coe
                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v5) (coe v6)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                              (coe v2))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                  (coe v2)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1094)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_retirepool_880 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v2))
                           (let v7
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    v7)
                                 (coe
                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                    (coe
                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                       (coe v6)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1096))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1176 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_922 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958 v7 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in GOVCERT"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v10 of
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regdrep_882 v12 v13 v14
                                        -> let v15
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
                                                                 (coe v3)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                          (coe v15) (coe v16))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v13) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                              (let v15
                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v16
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                       (coe v15) (coe v16))))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                 (coe v7))))) in
                                           coe
                                             (case coe v15 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                  -> if coe v16
                                                       then case coe v17 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v19)
                                                                                            (coe
                                                                                               v20))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                                                (coe
                                                                                                   v0)))
                                                                                          v2
                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
                                                                                             (coe
                                                                                                v3)))))
                                                                                 (coe v7)))
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                              (coe v0) (coe v10)
                                                                              (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1242
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(d \8801 .Ledger.Conway.Conformance.PParams.PParams.drepDeposit pp \215\n (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Interface.IsSet.IsSet.\8713 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)\n \8846\n d \8801 0 \215\n (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Interface.IsSet.IsSet.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_deregdrep_884 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                              (coe v0))))
                                                     v12
                                                     (coe
                                                        MAlonzo.Code.Interface.IsSet.du_dom_540
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                        (coe
                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                        (coe v7)) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then case coe v16 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                           (let v18
                                                                                  = let v18
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v19
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v18)
                                                                                            (coe
                                                                                               v19))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v18)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v7)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v12)))
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                              (coe v0) (coe v10)
                                                                              (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1244
                                                                           v3 v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_ccreghot_886 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (let v14
                                                                  = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                            (coe v0))) in
                                                            coe
                                                              (let v15
                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                    (coe v14) (coe v15))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                       (coe v14) (coe v15))))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v12)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                           (coe v8))) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                       (coe v7)
                                                                       (let v17
                                                                              = let v17
                                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v18
                                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           v18))) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                erased v17)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v12)
                                                                                   (coe v13)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v8))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe v8)))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                          (coe v0) (coe v10)
                                                                          (coe v9)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1246
                                                                       v3)))
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712\n  (c , nothing))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738) ccKeys))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v11))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1394 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_922 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974 v7 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_1150 (coe v0)) v3 v8 v10 in
                                 coe
                                   (let v12
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_1176 (coe v0)) v1 v9
                                              v10 in
                                    coe
                                      (let v13
                                             = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                 (coe v8) in
                                       coe
                                         (let v14
                                                = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                    (coe v7) in
                                          coe
                                            (let v15
                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                       (coe v7) in
                                             coe
                                               (let v16
                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                          (coe v7) in
                                                coe
                                                  (let v17
                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                             (coe v7) in
                                                   coe
                                                     (case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_874 v18 v19 v20 v21
                                                          -> let v22
                                                                   = coe
                                                                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                   (let v22
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v23
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v22)
                                                                                            (coe
                                                                                               v23))))
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                      (coe v16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                (coe v21)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
                                                                                   (coe v3))))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                   (let v22
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v23
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v22)
                                                                                            (coe
                                                                                               v23))))
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                      (coe v16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                   (coe v21)
                                                                                   (coe
                                                                                      (0 ::
                                                                                         Integer))))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe v20)
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_map_386
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                         (coe
                                                                                            MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                         (coe v13)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
                                                             coe
                                                               (case coe v22 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                    -> if coe v23
                                                                         then case coe v24 of
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                  -> let v26
                                                                                           = coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                                                  (let v26
                                                                                                         = let v26
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v27
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v26)
                                                                                                                   (coe
                                                                                                                      v27))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v26)
                                                                                                        (coe
                                                                                                           v18)
                                                                                                        (coe
                                                                                                           v19)
                                                                                                        (coe
                                                                                                           v14)))
                                                                                                  (let v26
                                                                                                         = let v26
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v27
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v26)
                                                                                                                   (coe
                                                                                                                      v27))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v26)
                                                                                                        (coe
                                                                                                           v18)
                                                                                                        (coe
                                                                                                           v20)
                                                                                                        (coe
                                                                                                           v15)))
                                                                                                  (let v26
                                                                                                         = let v26
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v27
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v26)
                                                                                                                   (coe
                                                                                                                      v27))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v26)
                                                                                                        (coe
                                                                                                           v16)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 v18)
                                                                                                              (coe
                                                                                                                 (0 ::
                                                                                                                    Integer))))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v10)
                                                                                                     (coe
                                                                                                        v17)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1166
                                                                                                  v25) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                       (coe
                                                                                                          v27)
                                                                                                       (coe
                                                                                                          v8)
                                                                                                       (coe
                                                                                                          v9))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1250
                                                                                                       v28))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         else (let v25
                                                                                     = seq
                                                                                         (coe v24)
                                                                                         (coe
                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                            (let v25
                                                                                                   = coe
                                                                                                       MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                (let v25
                                                                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                                 (coe
                                                                                                                                    v0))) in
                                                                                                                 coe
                                                                                                                   (let v26
                                                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                                 (coe
                                                                                                                                    v0)) in
                                                                                                                    coe
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                         (coe
                                                                                                                            v25)
                                                                                                                         (coe
                                                                                                                            v26))))
                                                                                                                (coe
                                                                                                                   v18)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                   (coe
                                                                                                                      v16)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                             (coe
                                                                                                                v21)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
                                                                                                                (coe
                                                                                                                   v3))))
                                                                                                       erased in
                                                                                             coe
                                                                                               (case coe
                                                                                                       v25 of
                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                    -> coe
                                                                                                         ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.Conway.Conformance.PParams.PParams.keyDeposit pp)"
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                    -> let v27
                                                                                                             = coe
                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                       (let v27
                                                                                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                                        (coe
                                                                                                                                           v0))) in
                                                                                                                        coe
                                                                                                                          (let v28
                                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                                        (coe
                                                                                                                                           v0)) in
                                                                                                                           coe
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                                (coe
                                                                                                                                   v27)
                                                                                                                                (coe
                                                                                                                                   v28))))
                                                                                                                       (coe
                                                                                                                          v18)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                          (coe
                                                                                                                             v16)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                       (coe
                                                                                                                          v21)
                                                                                                                       (coe
                                                                                                                          (0 ::
                                                                                                                             Integer))))
                                                                                                                 erased in
                                                                                                       coe
                                                                                                         (case coe
                                                                                                                 v27 of
                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v28
                                                                                                              -> coe
                                                                                                                   ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                                    ::
                                                                                                                    Data.Text.Text)
                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v28
                                                                                                              -> coe
                                                                                                                   ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  Interface.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                                    ::
                                                                                                                    Data.Text.Text)
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                               coe
                                                                                 (case coe v25 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                      -> case coe
                                                                                                v26 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                        (coe
                                                                                                           v27)
                                                                                                        (coe
                                                                                                           v8)
                                                                                                        (coe
                                                                                                           v9))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1250
                                                                                                        v28))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                      -> case coe
                                                                                                v11 of
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                             -> case coe
                                                                                                       v27 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                               (coe
                                                                                                                  v7)
                                                                                                               (coe
                                                                                                                  v28)
                                                                                                               (coe
                                                                                                                  v9))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1252
                                                                                                               v29))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v27
                                                                                             -> case coe
                                                                                                       v12 of
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v28
                                                                                                    -> case coe
                                                                                                              v28 of
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                           -> coe
                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                                      (coe
                                                                                                                         v7)
                                                                                                                      (coe
                                                                                                                         v8)
                                                                                                                      (coe
                                                                                                                         v29))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1254
                                                                                                                      v30))
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            ("DELEG: "
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               v26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  ("\nPOOL: "
                                                                                                                   ::
                                                                                                                   Data.Text.Text)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     v27
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                        MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                        ("\nVDEL: "
                                                                                                                         ::
                                                                                                                         Data.Text.Text)
                                                                                                                        v28)))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_dereg_876 v18 v19
                                                          -> let v20
                                                                   = coe
                                                                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                             (coe
                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                () erased () erased
                                                                                (let v20
                                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                 (coe
                                                                                                    v0))) in
                                                                                 coe
                                                                                   (let v21
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                 (coe
                                                                                                    v0)) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                         (coe v20)
                                                                                         (coe
                                                                                            v21))))
                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v18)
                                                                                (coe
                                                                                   (0 :: Integer)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                (coe v16)))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                             (coe
                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                () erased () erased
                                                                                (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                   (coe v0))
                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CredentialDeposit_842
                                                                                   (coe v18))
                                                                                (coe v19))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                (coe v17)))) in
                                                             coe
                                                               (case coe v20 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                    -> if coe v21
                                                                         then case coe v22 of
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                  -> let v24
                                                                                           = coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                                                  (let v24
                                                                                                         = let v24
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v25
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v24)
                                                                                                                   (coe
                                                                                                                      v25))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v24)
                                                                                                        (coe
                                                                                                           v14)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                           v18)))
                                                                                                  (let v24
                                                                                                         = let v24
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v25
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v24)
                                                                                                                   (coe
                                                                                                                      v25))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v24)
                                                                                                        (coe
                                                                                                           v15)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                           v18)))
                                                                                                  (let v24
                                                                                                         = let v24
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v25
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                   (coe
                                                                                                                      v24)
                                                                                                                   (coe
                                                                                                                      v25))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           v24)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                              (coe
                                                                                                                 v16))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v16)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                           v18)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                           (coe
                                                                                                              v17))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              v17)))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1168
                                                                                                  v23) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v24 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                       (coe
                                                                                                          v25)
                                                                                                       (coe
                                                                                                          v8)
                                                                                                       (coe
                                                                                                          v9))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1250
                                                                                                       v26))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         else (let v23
                                                                                     = seq
                                                                                         (coe v22)
                                                                                         (coe
                                                                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                            (let v23
                                                                                                   = coe
                                                                                                       MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                             ()
                                                                                                             erased
                                                                                                             ()
                                                                                                             erased
                                                                                                             (let v23
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v24
                                                                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                                              (coe
                                                                                                                                 v0)) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                                      (coe
                                                                                                                         v23)
                                                                                                                      (coe
                                                                                                                         v24))))
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (coe
                                                                                                                v18)
                                                                                                             (coe
                                                                                                                (0 ::
                                                                                                                   Integer)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                             (coe
                                                                                                                v16)))
                                                                                                       erased in
                                                                                             coe
                                                                                               (case coe
                                                                                                       v23 of
                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                    -> coe
                                                                                                         ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                    -> coe
                                                                                                         ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndep"
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                               coe
                                                                                 (case coe v23 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                      -> case coe
                                                                                                v24 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                        (coe
                                                                                                           v25)
                                                                                                        (coe
                                                                                                           v8)
                                                                                                        (coe
                                                                                                           v9))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1250
                                                                                                        v26))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                                      -> case coe
                                                                                                v11 of
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                             -> case coe
                                                                                                       v25 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                               (coe
                                                                                                                  v7)
                                                                                                               (coe
                                                                                                                  v26)
                                                                                                               (coe
                                                                                                                  v9))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1252
                                                                                                               v27))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                             -> case coe
                                                                                                       v12 of
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                                    -> case coe
                                                                                                              v26 of
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                           -> coe
                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                                                      (coe
                                                                                                                         v7)
                                                                                                                      (coe
                                                                                                                         v8)
                                                                                                                      (coe
                                                                                                                         v27))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1254
                                                                                                                      v28))
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            ("DELEG: "
                                                                                                             ::
                                                                                                             Data.Text.Text)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               v24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  ("\nPOOL: "
                                                                                                                   ::
                                                                                                                   Data.Text.Text)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     v25
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                        MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                        ("\nVDEL: "
                                                                                                                         ::
                                                                                                                         Data.Text.Text)
                                                                                                                        v26)))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> let v18
                                                                   = "Unexpected certificate in DELEG"
                                                                     ::
                                                                     Data.Text.Text in
                                                             coe
                                                               (case coe v11 of
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v19
                                                                    -> case coe v19 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                           -> coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                      (coe v7)
                                                                                      (coe v20)
                                                                                      (coe v9))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1252
                                                                                      v21))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v19
                                                                    -> case coe v12 of
                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                           -> case coe v20 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                  -> coe
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                                                             (coe
                                                                                                v7)
                                                                                             (coe
                                                                                                v8)
                                                                                             (coe
                                                                                                v21))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1254
                                                                                             v22))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
                                                                           -> coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                   ("DELEG: "
                                                                                    ::
                                                                                    Data.Text.Text)
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                      v18
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                         ("\nPOOL: "
                                                                                          ::
                                                                                          Data.Text.Text)
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                            v19
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                               ("\nVDEL: "
                                                                                                ::
                                                                                                Data.Text.Text)
                                                                                               v20)))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_1784 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_922 v2 v3 v4 v5
             -> coe
                  (\ v6 v7 ->
                     coe
                       du_goal_1910 (coe v0) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_1890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1890 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rewards_1890 v5
du_rewards_1890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1894 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_voteDelegs_1894 v5
du_voteDelegs_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_1896 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_sep_1896
du_sep_1896 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_1896 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_1900 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_genErr_1900 v0 v4 v5
du_genErr_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_1900 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                 (coe
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Axiom.Set.d_all'63'_1598
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         erased
                         (coe
                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                            (coe
                               (\ v4 ->
                                  coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                    (let v5
                                           = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                             (coe v5) (coe v6))))
                                    (coe v4)
                                    (coe
                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe v2)))))))
                         v3))
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
                            (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                    (let v3
                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_386
                          (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
                          (\ v4 ->
                             MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v4))
                          (coe
                             MAlonzo.Code.Interface.IsSet.du_dom_540
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                             (coe v1))))))
              erased in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               (" \172 ( filter\738 isKeyHash (map\738 RwdAddr.stake (dom wdrls)) \8838 dom voteDelegs ) "
                                ::
                                Data.Text.Text)
                               (coe du_sep_1896))
                            (" filter\738 isKeyHash (map\738 RwdAddr.stake (dom wdrls)): "
                             ::
                             Data.Text.Text))
                         (coe
                            MAlonzo.Code.Data.String.Base.d_braces_48
                            (coe
                               MAlonzo.Code.Data.String.Base.d_intersperse_30
                               (", " :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_map_22
                                  (coe
                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
                                                   (coe v5))
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_386
                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (\ v5 ->
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                                                   (coe v5))
                                              (coe
                                                 MAlonzo.Code.Interface.IsSet.du_dom_540
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                 (coe v1))))))))))
                      (coe du_sep_1896))
                   (" dom voteDelegs: " :: Data.Text.Text))
                (coe
                   MAlonzo.Code.Data.String.Base.d_braces_48
                   (coe
                      MAlonzo.Code.Data.String.Base.d_intersperse_30
                      (", " :: Data.Text.Text)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_map_22
                         (coe
                            MAlonzo.Code.Class.Show.Core.d_show_16
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_540
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                        (coe v2)))))))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
           -> coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               ("\172 ( map\738 (Bifunctor.map\8321 Bifunctor-\215 (RwdAddr.stake)) (wdrls \738) \8838 proj\8321 rewards )"
                                ::
                                Data.Text.Text)
                               (coe du_sep_1896))
                            (" map\738 (Bifunctor.map\8321 Bifunctor-\215 (RwdAddr.stake)) (wdrls \738): "
                             ::
                             Data.Text.Text))
                         (coe
                            MAlonzo.Code.Data.String.Base.d_braces_48
                            (coe
                               MAlonzo.Code.Data.String.Base.d_intersperse_30
                               (", " :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_map_22
                                  (coe
                                     MAlonzo.Code.Class.Show.Core.d_show_16
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_map_386
                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                                              (coe
                                                 MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                                              (coe
                                                 (\ v5 ->
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                                                      (coe v5))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                              (coe v1)))))))))
                      (coe du_sep_1896))
                   (" proj\8321 rewards: " :: Data.Text.Text))
                (coe
                   MAlonzo.Code.Data.String.Base.d_braces_48
                   (coe
                      MAlonzo.Code.Data.String.Base.d_intersperse_30
                      (", " :: Data.Text.Text)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_map_22
                         (coe
                            MAlonzo.Code.Class.Show.Core.d_show_16
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_1910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_1910 v0 v1 v2 v3 v4 v5 ~v6 = du_goal_1910 v0 v1 v2 v3 v4 v5
du_goal_1910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_1910 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                            (let v7
                                   = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                             (coe v0))) in
                             coe
                               (let v8
                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                     (coe v7) (coe v8))))
                            (coe v6)
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_540
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                     (coe v5))))))
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
                               (coe v6))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_386
                          (MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (\ v6 ->
                             MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v6))
                          (coe
                             MAlonzo.Code.Interface.IsSet.du_dom_540
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v4)))))
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                            (coe
                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                               (let v7
                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                (coe v0))) in
                                coe
                                  (let v8
                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                        (coe v7) (coe v8))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v6)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                     (coe v5))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_386
                       (MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                          (coe
                             (\ v6 ->
                                MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                                  (coe v6))))
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v4))))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
           -> if coe v7
                then case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                   (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe v5)))
                                       (let v10
                                              = let v10
                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                        (coe v10) (coe v11))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased v10)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_map_386
                                                      (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v11))
                                                      (\ v12 ->
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                                                           (coe v12))
                                                      (coe
                                                         MAlonzo.Code.Interface.IsSet.du_dom_540
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                         (coe
                                                            MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                               (coe v4))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v4))))))
                                                (coe (0 :: Integer)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                         (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                         (coe v5)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                       (let v10
                                              = let v10
                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                        (coe v10) (coe v11))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1276
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased v10)
                                             (let v11
                                                    = coe
                                                        MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                              (coe v0)))
                                                        v1
                                                        (let v11
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_43329
                                                                   (coe v2) (coe v3) (coe v1)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                         (coe v5)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                         (coe v4))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v4)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                               (coe v5))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                               (coe v5)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                               (coe v5))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                               (coe v5)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                         (coe v5)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                         (coe v5)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                                      (coe v5))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                         (coe v5)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                                         (coe v5))) in
                                                         coe
                                                           (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_43303
                                                                 (coe v11)))) in
                                              coe (coe (\ v12 -> v11)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                   (coe v5)))
                                             (let v11
                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_564
                                                   (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834)
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_fromList_416
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe v12))
                                                         (coe v3)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                             (coe v5)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                             (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1332
                                    v9))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v8)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_1900 (coe v0) (coe v4) (coe v5)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_1948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_1948 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe d_Computational'45'CERTBASE_1784 (coe v0))
      (coe d_Computational'45'CERT_1394 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
